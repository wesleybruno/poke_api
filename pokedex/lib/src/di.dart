import 'package:pokedex/src/core/core.dart';
import 'package:pokedex/src/modules/modules.dart';
import 'package:pokemon_dependencies/pokemon_dependencies.dart';

class DependencyInjection {
  final _instance = GetIt.instance;

  void _adapter() {
    _instance.registerLazySingleton<Dio>(
      () => CustomDioClient.initialize(
        baseUrl: const String.fromEnvironment("POKE_API_BASE_URL"),
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
