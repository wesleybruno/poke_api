import 'package:pokemon_dependencies/pokemon_dependencies.dart';

class PokemonEntity extends Equatable {
  final String name;
  final String avatarUrl;
  final String id;

  const PokemonEntity({
    required this.name,
    required this.avatarUrl,
    required this.id,
  });

  @override
  List<Object?> get props => [
        id,
      ];
}
