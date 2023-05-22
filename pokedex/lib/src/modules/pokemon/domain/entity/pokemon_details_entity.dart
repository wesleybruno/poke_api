import 'entity.dart';
import 'package:pokemon_dependencies/pokemon_dependencies.dart';

class PokemonDetailsEntity extends Equatable {
  final String id;
  final String name;
  final String avatarUrl;
  final String description;
  final List<PokemonTypes> types;
  final String size;
  final String weight;
  final List<PokemonStats> stats;

  final List<String> skills;

  const PokemonDetailsEntity({
    required this.id,
    required this.name,
    required this.avatarUrl,
    required this.description,
    required this.types,
    required this.size,
    required this.weight,
    required this.stats,
    required this.skills,
  });

  @override
  List<Object?> get props => [
        id,
      ];
}

class PokemonStats extends Equatable {
  const PokemonStats({
    required this.key,
    required this.value,
  });

  final String key;
  final double value;

  @override
  List<Object?> get props => [
        key,
        value,
      ];
}
