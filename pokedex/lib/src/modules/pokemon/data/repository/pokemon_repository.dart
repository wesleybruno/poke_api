import '../../../../core/core.dart';
import '../../../modules.dart';
import 'package:pokemon_dependencies/pokemon_dependencies.dart';

class PokemonRepository implements IPokemonRepository {
  PokemonRepository({
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
      return Left(UnauthorizedFailure());
    } on NotFoundException catch (_) {
      return Left(NotFoundFailure());
    } on TimeoutException catch (_) {
      return Left(TimeOutFailure());
    } on Exception catch (_) {
      return Left(UnexpectedFailure());
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
      return Left(UnauthorizedFailure());
    } on NotFoundException catch (_) {
      return Left(NotFoundFailure());
    } on TimeoutException catch (_) {
      return Left(TimeOutFailure());
    } on Exception catch (_) {
      return Left(UnexpectedFailure());
    }
  }
}
