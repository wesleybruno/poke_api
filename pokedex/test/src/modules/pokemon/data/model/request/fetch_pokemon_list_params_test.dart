import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/src/modules/modules.dart';

void main() {
  group('Test FetchPokemonListRequestParams', () {
    test('ToJson', () {
      final dto = FetchPokemonListRequestParams(
        limit: 30,
        offset: 0,
      );

      const expected = {'limit': 30, 'offset': 0};

      expect(dto.toJson(), expected);
    });
  });
}
