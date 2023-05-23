import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/src/modules/modules.dart';

void main() {
  group('Test FetchPokemonListResponse', () {
    test('FromJson', () {
      final json = {
        'count': 1281,
        'next': 'https://pokeapi.co/api/v2/pokemon?offset=1&limit=1',
        'previous': null,
        'results': [
          {'name': 'bulbasaur', 'url': 'https://pokeapi.co/api/v2/pokemon/1/'}
        ]
      };

      final dto = FetchPokemonListResponse.fromJson(json);

      expect(dto.results, isA<List<PokemomModel>>());
    });
  });
}
