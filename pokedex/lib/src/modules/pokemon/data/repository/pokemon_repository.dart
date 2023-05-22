import '../../../../core/core.dart';
import '../../../modules.dart';
import 'package:pokemon_dependencies/pokemon_dependencies.dart';

class PokemomRepository implements IPokemomRepository {
  PokemomRepository({
    required IPokemonDatasource datasource,
  }) : _datasource = datasource;

  final IPokemonDatasource _datasource;

  @override
  Future<Either<PokemonFailure, List<PokemonEntity>>> fetchListPokemon(
    FetchPokemonListUsecaseParams params,
  ) async {
    try {
      final dto = FetchPokemonListRequestParams(
        limit: params.limit,
        offset: params.offset,
      );

      final result = await _datasource.fetchListPokemon(dto.toJson());

      return Right(result.results);
    } on UnauthorizedException catch (_) {
      return Left(Unauthorized());
    } on NotFoundException catch (_) {
      return Left(NotFound());
    } on TimeoutException catch (_) {
      return Left(TimeOut());
    } on Exception catch (_) {
      return Left(Unexpected());
    }
  }

  @override
  Future<Either<PokemonFailure, PokemonDetailsEntity>> fetchPokemonDetails(
    PokemonEntity pokemomEntity,
  ) async {
    try {
      
      final result = await _datasource.fetchPokemonDetails(
        pokemomEntity.name,
      );

      return Right(result);
    } on UnauthorizedException catch (_) {
      return Left(Unauthorized());
    } on NotFoundException catch (_) {
      return Left(NotFound());
    } on TimeoutException catch (_) {
      return Left(TimeOut());
    } on Exception catch (_) {
      return Left(Unexpected());
    }
  }
}
