import './../modules.dart';
import './../../core/core.dart';
import 'package:pokemon_dependencies/pokemon_dependencies.dart';

class PokemonDi {
  final _instance = GetIt.instance;

  void _dataSource() {
    _instance.registerLazySingleton<IPokemonDatasource>(
      () => PokemonDatasource(
        httpClient: _instance.get<IHttpClient>(),
      ),
    );
  }

  void _repository() {
    _instance.registerLazySingleton<IPokemomRepository>(
      () => PokemomRepository(
        datasource: _instance.get<IPokemonDatasource>(),
      ),
    );
  }

  void _usecase() {
    _instance.registerLazySingleton<IFetchPokemonDetailsUsecase>(
      () => FetchPokemonDetailsUsecase(
        repository: _instance.get<IPokemomRepository>(),
      ),
    );

    _instance.registerLazySingleton<IFetchPokemonListUsecase>(
      () => FetchPokemonListUsecase(
        repository: _instance.get<IPokemomRepository>(),
      ),
    );
  }

  void _cubit() {
    _instance.registerLazySingleton<HomeScreenViewModel>(
      () => HomeScreenViewModel(
        fetchPokemonListUsecase: _instance.get<IFetchPokemonListUsecase>(),
        fetchPokemonDetailsUsecase:
            _instance.get<IFetchPokemonDetailsUsecase>(),
      ),
    );
  }

  Future<void> initialize() async {
    _dataSource();
    _repository();
    _usecase();
    _cubit();
  }
}
