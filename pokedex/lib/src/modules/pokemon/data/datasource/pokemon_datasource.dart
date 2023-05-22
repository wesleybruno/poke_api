import 'package:pokedex/src/core/core.dart';
import 'package:pokedex/src/modules/pokemon/data/data.dart';

abstract class IPokemonDatasource {
  Future<FetchPokemonListResponse> fetchListPokemon(
    Map<String, dynamic> params,
  );

  Future<FetchPokemonDetailsResponse> fetchPokemonDetails(
    String id,
  );
}

class PokemonDatasource implements IPokemonDatasource {
  static const String _basePath = '/pokemon';

  final IHttpClient httpClient;

  PokemonDatasource({
    required this.httpClient,
  });

  @override
  Future<FetchPokemonListResponse> fetchListPokemon(
    Map<String, dynamic> params,
  ) async {
    final result = await httpClient.doRequest<Map<String, dynamic>>(
      HttpRequest(
        path: _basePath,
        method: RequestType.get,
        queryParams: params,
      ),
    );

    return FetchPokemonListResponse.fromJson(result.data!);
  }

  @override
  Future<FetchPokemonDetailsResponse> fetchPokemonDetails(String id) async {
    final result = await httpClient.doRequest<Map<String, dynamic>>(
      HttpRequest(
        path: '$_basePath/$id',
        method: RequestType.get,
      ),
    );

    return FetchPokemonDetailsResponse.fromJson(result.data!);
  }
}
