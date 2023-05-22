import 'package:pokedex/src/modules/modules.dart';
import 'package:pokemon_dependencies/pokemon_dependencies.dart';

class HomeScreenViewModel extends Cubit<HomeScreenState> {
  HomeScreenViewModel({
    required IFetchPokemonListUsecase fetchPokemonListUsecase,
    required IFetchPokemonDetailsUsecase fetchPokemonDetailsUsecase,
  })  : _fetchPokemonListUsecase = fetchPokemonListUsecase,
        _fetchPokemonDetailsUsecase = fetchPokemonDetailsUsecase,
        super(HomeScreenState.initial());

  final IFetchPokemonListUsecase _fetchPokemonListUsecase;
  final IFetchPokemonDetailsUsecase _fetchPokemonDetailsUsecase;

  void clearState() {
    emit(state.copyWith(pokemonDetailsEntity: null));
  }

  void filterByText(String text) {
    final filtered = state.listPokemons
        .where((element) => element.name.contains(text))
        .toList();

    emit(
      state.copyWith(
        searchTerm: text,
        filteredList: filtered,
      ),
    );
  }

  Future<void> fetchPokemonList() async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );

    final result = await _fetchPokemonListUsecase(
      FetchPokemonListUsecaseParams(),
    );

    final newState = result.fold(
      (failure) => state.copyWith(
        isLoading: false,
        failure: failure,
      ),
      (listPokemon) => state.copyWith(
        isLoading: false,
        listPokemons: listPokemon,
        filteredList: listPokemon,
      ),
    );

    emit(
      newState,
    );
  }

  Future<void> loadMore() async {
    if (state.searchTerm != null && state.searchTerm!.isNotEmpty) {
      return;
    }

    final newOffset = (state.offset ?? 0) + (state.limit ?? 0);
    emit(
      state.copyWith(
        loadingMore: true,
        offset: newOffset,
      ),
    );

    final result = await _fetchPokemonListUsecase(
      FetchPokemonListUsecaseParams(
        offset: newOffset,
      ),
    );

    final newState = result.fold(
      (failure) => state.copyWith(
        loadingMore: false,
        failure: failure,
      ),
      (newList) {
        final actualList = [...state.listPokemons, ...newList];
        return state.copyWith(
          loadingMore: false,
          listPokemons: actualList,
          filteredList: actualList,
        );
      },
    );

    emit(
      newState,
    );
  }

  Future<void> fetchPokemonDetails(
    PokemonEntity pokemonEntity,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );

    final result = await _fetchPokemonDetailsUsecase(
      pokemonEntity,
    );

    final newState = result.fold(
      (failure) => state.copyWith(
        isLoading: false,
        failure: failure,
      ),
      (entity) {
        return state.copyWith(
          isLoading: false,
          pokemonDetailsEntity: entity,
        );
      },
    );

    emit(
      newState,
    );
  }
}
