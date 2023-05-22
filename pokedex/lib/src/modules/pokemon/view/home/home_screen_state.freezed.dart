// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeScreenState {
  List<PokemonEntity> get listPokemons => throw _privateConstructorUsedError;
  List<PokemonEntity> get filteredList => throw _privateConstructorUsedError;
  PokemonDetailsEntity? get pokemonDetailsEntity =>
      throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  PokemonFailure? get failure => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool? get loadingMore => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String? get searchTerm => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeScreenStateCopyWith<HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenStateCopyWith<$Res> {
  factory $HomeScreenStateCopyWith(
          HomeScreenState value, $Res Function(HomeScreenState) then) =
      _$HomeScreenStateCopyWithImpl<$Res, HomeScreenState>;
  @useResult
  $Res call(
      {List<PokemonEntity> listPokemons,
      List<PokemonEntity> filteredList,
      PokemonDetailsEntity? pokemonDetailsEntity,
      bool? isLoading,
      PokemonFailure? failure,
      String? errorMessage,
      bool? loadingMore,
      int? offset,
      int? limit,
      String? searchTerm});
}

/// @nodoc
class _$HomeScreenStateCopyWithImpl<$Res, $Val extends HomeScreenState>
    implements $HomeScreenStateCopyWith<$Res> {
  _$HomeScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listPokemons = null,
    Object? filteredList = null,
    Object? pokemonDetailsEntity = freezed,
    Object? isLoading = freezed,
    Object? failure = freezed,
    Object? errorMessage = freezed,
    Object? loadingMore = freezed,
    Object? offset = freezed,
    Object? limit = freezed,
    Object? searchTerm = freezed,
  }) {
    return _then(_value.copyWith(
      listPokemons: null == listPokemons
          ? _value.listPokemons
          : listPokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonEntity>,
      filteredList: null == filteredList
          ? _value.filteredList
          : filteredList // ignore: cast_nullable_to_non_nullable
              as List<PokemonEntity>,
      pokemonDetailsEntity: freezed == pokemonDetailsEntity
          ? _value.pokemonDetailsEntity
          : pokemonDetailsEntity // ignore: cast_nullable_to_non_nullable
              as PokemonDetailsEntity?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as PokemonFailure?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      loadingMore: freezed == loadingMore
          ? _value.loadingMore
          : loadingMore // ignore: cast_nullable_to_non_nullable
              as bool?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      searchTerm: freezed == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeScreenStateCopyWith<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  factory _$$_HomeScreenStateCopyWith(
          _$_HomeScreenState value, $Res Function(_$_HomeScreenState) then) =
      __$$_HomeScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PokemonEntity> listPokemons,
      List<PokemonEntity> filteredList,
      PokemonDetailsEntity? pokemonDetailsEntity,
      bool? isLoading,
      PokemonFailure? failure,
      String? errorMessage,
      bool? loadingMore,
      int? offset,
      int? limit,
      String? searchTerm});
}

/// @nodoc
class __$$_HomeScreenStateCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$_HomeScreenState>
    implements _$$_HomeScreenStateCopyWith<$Res> {
  __$$_HomeScreenStateCopyWithImpl(
      _$_HomeScreenState _value, $Res Function(_$_HomeScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listPokemons = null,
    Object? filteredList = null,
    Object? pokemonDetailsEntity = freezed,
    Object? isLoading = freezed,
    Object? failure = freezed,
    Object? errorMessage = freezed,
    Object? loadingMore = freezed,
    Object? offset = freezed,
    Object? limit = freezed,
    Object? searchTerm = freezed,
  }) {
    return _then(_$_HomeScreenState(
      listPokemons: null == listPokemons
          ? _value._listPokemons
          : listPokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonEntity>,
      filteredList: null == filteredList
          ? _value._filteredList
          : filteredList // ignore: cast_nullable_to_non_nullable
              as List<PokemonEntity>,
      pokemonDetailsEntity: freezed == pokemonDetailsEntity
          ? _value.pokemonDetailsEntity
          : pokemonDetailsEntity // ignore: cast_nullable_to_non_nullable
              as PokemonDetailsEntity?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as PokemonFailure?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      loadingMore: freezed == loadingMore
          ? _value.loadingMore
          : loadingMore // ignore: cast_nullable_to_non_nullable
              as bool?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      searchTerm: freezed == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_HomeScreenState implements _HomeScreenState {
  _$_HomeScreenState(
      {final List<PokemonEntity> listPokemons = const [],
      final List<PokemonEntity> filteredList = const [],
      this.pokemonDetailsEntity,
      this.isLoading = false,
      this.failure,
      this.errorMessage,
      this.loadingMore = false,
      this.offset = 0,
      this.limit = 30,
      this.searchTerm})
      : _listPokemons = listPokemons,
        _filteredList = filteredList;

  final List<PokemonEntity> _listPokemons;
  @override
  @JsonKey()
  List<PokemonEntity> get listPokemons {
    if (_listPokemons is EqualUnmodifiableListView) return _listPokemons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listPokemons);
  }

  final List<PokemonEntity> _filteredList;
  @override
  @JsonKey()
  List<PokemonEntity> get filteredList {
    if (_filteredList is EqualUnmodifiableListView) return _filteredList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredList);
  }

  @override
  final PokemonDetailsEntity? pokemonDetailsEntity;
  @override
  @JsonKey()
  final bool? isLoading;
  @override
  final PokemonFailure? failure;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool? loadingMore;
  @override
  @JsonKey()
  final int? offset;
  @override
  @JsonKey()
  final int? limit;
  @override
  final String? searchTerm;

  @override
  String toString() {
    return 'HomeScreenState(listPokemons: $listPokemons, filteredList: $filteredList, pokemonDetailsEntity: $pokemonDetailsEntity, isLoading: $isLoading, failure: $failure, errorMessage: $errorMessage, loadingMore: $loadingMore, offset: $offset, limit: $limit, searchTerm: $searchTerm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeScreenState &&
            const DeepCollectionEquality()
                .equals(other._listPokemons, _listPokemons) &&
            const DeepCollectionEquality()
                .equals(other._filteredList, _filteredList) &&
            (identical(other.pokemonDetailsEntity, pokemonDetailsEntity) ||
                other.pokemonDetailsEntity == pokemonDetailsEntity) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.loadingMore, loadingMore) ||
                other.loadingMore == loadingMore) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listPokemons),
      const DeepCollectionEquality().hash(_filteredList),
      pokemonDetailsEntity,
      isLoading,
      failure,
      errorMessage,
      loadingMore,
      offset,
      limit,
      searchTerm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeScreenStateCopyWith<_$_HomeScreenState> get copyWith =>
      __$$_HomeScreenStateCopyWithImpl<_$_HomeScreenState>(this, _$identity);
}

abstract class _HomeScreenState implements HomeScreenState {
  factory _HomeScreenState(
      {final List<PokemonEntity> listPokemons,
      final List<PokemonEntity> filteredList,
      final PokemonDetailsEntity? pokemonDetailsEntity,
      final bool? isLoading,
      final PokemonFailure? failure,
      final String? errorMessage,
      final bool? loadingMore,
      final int? offset,
      final int? limit,
      final String? searchTerm}) = _$_HomeScreenState;

  @override
  List<PokemonEntity> get listPokemons;
  @override
  List<PokemonEntity> get filteredList;
  @override
  PokemonDetailsEntity? get pokemonDetailsEntity;
  @override
  bool? get isLoading;
  @override
  PokemonFailure? get failure;
  @override
  String? get errorMessage;
  @override
  bool? get loadingMore;
  @override
  int? get offset;
  @override
  int? get limit;
  @override
  String? get searchTerm;
  @override
  @JsonKey(ignore: true)
  _$$_HomeScreenStateCopyWith<_$_HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
