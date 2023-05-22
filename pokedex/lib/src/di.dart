import 'package:pokedex/src/core/core.dart';
import 'package:pokedex/src/modules/modules.dart';
import 'package:pokemon_dependencies/pokemon_dependencies.dart';

class DependencyInjection {
  final _instance = GetIt.instance;

  void _adapter() {
    _instance.registerLazySingleton<Dio>(
      () => CustomDioClient.initialize(
        //TODO(refactor): Isolate to json
        baseUrl: 'https://pokeapi.co/api/v2',
      ),
    );

    _instance.registerLazySingleton<IHttpClient>(
      () => HttpClient(dioInstance: GetIt.I.get<Dio>()),
    );
  }

  void _modulesDI() {
    PokemonDi().initialize();
  }

  Future<void> initialize() async {
    _adapter();
    _modulesDI();
  }
}
