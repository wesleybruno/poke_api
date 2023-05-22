import 'package:pokedex/src/modules/modules.dart';
import 'package:pokedex/src/modules/pokemon/view/details/details_screen_state.dart';
import 'package:pokemon_dependencies/pokemon_dependencies.dart';

class DetailsScreenViewModel extends Cubit<DetailsScreenState> {
  DetailsScreenViewModel({
    required IFetchPokemonDetailsUsecase fetchPokemonDetailsUsecase,
  })  : _fetchPokemonDetailsUsecase = fetchPokemonDetailsUsecase,
        super(DetailsScreenState.initial());

  final IFetchPokemonDetailsUsecase _fetchPokemonDetailsUsecase;

  Future<void> fetchPokemonDetails(PokemonEntity pokemonEntity) async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );

    final result = await _fetchPokemonDetailsUsecase(pokemonEntity);

    final newState = result.fold(
      (failure) => state.copyWith(
        isLoading: false,
        failure: failure,
      ),
      (pokemonDetails) => state.copyWith(
        isLoading: false,
        pokemonDetailsEntity: pokemonDetails,
      ),
    );

    emit(
      newState,
    );
  }
}
