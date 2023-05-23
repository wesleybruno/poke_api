import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/src/core/core.dart';
import 'package:pokedex/src/modules/modules.dart';
import 'package:pokemon_dependencies/pokemon_dependencies.dart';

class MockPokemonDataSource extends Mock implements IPokemonDatasource {}

void main() {
  late IPokemonRepository repository;
  late MockPokemonDataSource mockPokemonDataSource;

  setUpAll(() {
    mockPokemonDataSource = MockPokemonDataSource();
    repository = PokemonRepository(
      datasource: mockPokemonDataSource,
    );

    registerFallbackValue(
      FetchPokemonListRequestParams(
        limit: 30,
        offset: 0,
      ),
    );
  });

  group('Test IPokemonRepository', () {
    group('fetchListPokemon', () {
      final response = FetchPokemonListResponse(
        count: 1,
        results: [
          const PokemomModel(name: 'name', avatarUrl: 'avatarUrl'),
        ],
      );

      final params = FetchPokemonListUsecaseParams(
        limit: 30,
        offset: 0,
      );

      test('Success', () async {
        when(
          () => mockPokemonDataSource.fetchListPokemon(
            any(),
          ),
        ).thenAnswer(
          (_) async => response,
        );

        final result = await repository.fetchListPokemon(params);

        expect(result, isA<Right>());
      });

      test('UnauthorizedException', () async {
        when(
          () => mockPokemonDataSource.fetchListPokemon(
            any(),
          ),
        ).thenThrow(
          UnauthorizedException(error: ''),
        );

        final result = await repository.fetchListPokemon(params);

        expect(result, isA<Left>());
        result.fold(
          (left) => expect(left, isA<UnauthorizedFailure>()),
          (_) => null,
        );
      });

      test('NotFoundException', () async {
        when(
          () => mockPokemonDataSource.fetchListPokemon(
            any(),
          ),
        ).thenThrow(
          NotFoundException(error: ''),
        );

        final result = await repository.fetchListPokemon(params);

        expect(result, isA<Left>());
        result.fold(
          (left) => expect(left, isA<NotFoundFailure>()),
          (_) => null,
        );
      });

      test('TimeoutException', () async {
        when(
          () => mockPokemonDataSource.fetchListPokemon(
            any(),
          ),
        ).thenThrow(
          TimeoutException(error: ''),
        );

        final result = await repository.fetchListPokemon(params);

        expect(result, isA<Left>());
        result.fold(
          (left) => expect(left, isA<TimeOutFailure>()),
          (_) => null,
        );
      });

      test('Exception', () async {
        when(
          () => mockPokemonDataSource.fetchListPokemon(
            any(),
          ),
        ).thenThrow(
          Exception(),
        );

        final result = await repository.fetchListPokemon(params);

        expect(result, isA<Left>());
        result.fold(
          (left) => expect(left, isA<UnexpectedFailure>()),
          (_) => null,
        );
      });
    });

    group('fetchPokemonDetails', () {
      final response = FetchPokemonDetailsResponse(
        id: 'id',
        weight: 'weight',
        name: 'name',
        height: 0,
        statsModel: const [],
        abilities: const [],
        typesModel: const [],
        sprites: Sprites(frontDefault: ''),
      );

      const params = PokemonEntity(
        id: '',
        name: '',
        avatarUrl: '',
      );

      test('Success', () async {
        when(
          () => mockPokemonDataSource.fetchPokemonDetails(
            any(),
          ),
        ).thenAnswer(
          (_) async => response,
        );

        final result = await repository.fetchPokemonDetails(params);

        expect(result, isA<Right>());
      });


      test('UnauthorizedException', () async {
        when(
          () => mockPokemonDataSource.fetchPokemonDetails(
            any(),
          ),
        ).thenThrow(
          UnauthorizedException(error: ''),
        );

        final result = await repository.fetchPokemonDetails(params);

        expect(result, isA<Left>());
        result.fold(
          (left) => expect(left, isA<UnauthorizedFailure>()),
          (_) => null,
        );
      });

      test('NotFoundException', () async {
        when(
          () => mockPokemonDataSource.fetchPokemonDetails(
            any(),
          ),
        ).thenThrow(
          NotFoundException(error: ''),
        );

        final result = await repository.fetchPokemonDetails(params);

        expect(result, isA<Left>());
        result.fold(
          (left) => expect(left, isA<NotFoundFailure>()),
          (_) => null,
        );
      });

      test('TimeoutException', () async {
        when(
          () => mockPokemonDataSource.fetchPokemonDetails(
            any(),
          ),
        ).thenThrow(
          TimeoutException(error: ''),
        );

        final result = await repository.fetchPokemonDetails(params);

        expect(result, isA<Left>());
        result.fold(
          (left) => expect(left, isA<TimeOutFailure>()),
          (_) => null,
        );
      });

      test('Exception', () async {
        when(
          () => mockPokemonDataSource.fetchPokemonDetails(
            any(),
          ),
        ).thenThrow(
          Exception(),
        );

        final result = await repository.fetchPokemonDetails(params);

        expect(result, isA<Left>());
        result.fold(
          (left) => expect(left, isA<UnexpectedFailure>()),
          (_) => null,
        );
      });
   
    });
  });
}
