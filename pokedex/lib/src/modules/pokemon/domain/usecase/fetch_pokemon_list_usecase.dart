import '../../../modules.dart';
import 'package:pokemon_dependencies/pokemon_dependencies.dart';

abstract class IFetchPokemonListUsecase {
  Future<Either<PokemonFailure, List<PokemonEntity>>> call(
    FetchPokemonListUsecaseParams params,
  );
}

class FetchPokemonListUsecase implements IFetchPokemonListUsecase {
  FetchPokemonListUsecase({
    required IPokemonRepository repository,
  }) : _repository = repository;
  final IPokemonRepository _repository;

  @override
  Future<Either<PokemonFailure, List<PokemonEntity>>> call(
    FetchPokemonListUsecaseParams params,
  ) {
    return _repository.fetchListPokemon(params);
  }
}

class FetchPokemonListUsecaseParams {
  FetchPokemonListUsecaseParams({
    this.limit = 30,
    this.offset = 0,
  });

  final int offset;
  final int limit;
}
