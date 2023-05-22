import 'package:pokedex/src/modules/pokemon/domain/domain.dart';

class FetchPokemonListResponse {
  FetchPokemonListResponse({
    required this.count,
    this.next,
    this.previous,
    required this.results,
  });
  final int count;
  final String? next;
  final String? previous;
  final List<PokemomModel> results;

  factory FetchPokemonListResponse.fromJson(Map<String, dynamic> json) {
    return FetchPokemonListResponse(
      count: json['count'],
      next: null,
      previous: null,
      results: List.from(json['results'])
          .map((e) => PokemomModel.fromJson(e))
          .toList(),
    );
  }
}

class PokemomModel extends PokemonEntity {
  const PokemomModel({
    required super.name,
    required super.avatarUrl,
  }) : super(id: '');

  factory PokemomModel.fromJson(Map<String, dynamic> json) {
    return PokemomModel(
      name: json['name'],
      avatarUrl: json['url'],
    );
  }
}
