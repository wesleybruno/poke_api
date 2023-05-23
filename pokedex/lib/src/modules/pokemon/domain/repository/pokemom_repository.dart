import '../domain.dart';
import 'package:pokemon_dependencies/pokemon_dependencies.dart';

abstract class IPokemonRepository {
  Future<Either<PokemonFailure, List<PokemonEntity>>> fetchListPokemon(
    FetchPokemonListUsecaseParams params,
  );

  Future<Either<PokemonFailure, PokemonDetailsEntity>> fetchPokemonDetails(
    PokemonEntity pokemonEntity,
  );
}
