// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailsScreenState {
  PokemonDetailsEntity? get pokemonDetailsEntity =>
      throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  PokemonFailure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailsScreenStateCopyWith<DetailsScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsScreenStateCopyWith<$Res> {
  factory $DetailsScreenStateCopyWith(
          DetailsScreenState value, $Res Function(DetailsScreenState) then) =
      _$DetailsScreenStateCopyWithImpl<$Res, DetailsScreenState>;
  @useResult
  $Res call(
      {PokemonDetailsEntity? pokemonDetailsEntity,
      bool? isLoading,
      PokemonFailure? failure});
}

/// @nodoc
class _$DetailsScreenStateCopyWithImpl<$Res, $Val extends DetailsScreenState>
    implements $DetailsScreenStateCopyWith<$Res> {
  _$DetailsScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonDetailsEntity = freezed,
    Object? isLoading = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailsScreenStateCopyWith<$Res>
    implements $DetailsScreenStateCopyWith<$Res> {
  factory _$$_DetailsScreenStateCopyWith(_$_DetailsScreenState value,
          $Res Function(_$_DetailsScreenState) then) =
      __$$_DetailsScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PokemonDetailsEntity? pokemonDetailsEntity,
      bool? isLoading,
      PokemonFailure? failure});
}

/// @nodoc
class __$$_DetailsScreenStateCopyWithImpl<$Res>
    extends _$DetailsScreenStateCopyWithImpl<$Res, _$_DetailsScreenState>
    implements _$$_DetailsScreenStateCopyWith<$Res> {
  __$$_DetailsScreenStateCopyWithImpl(
      _$_DetailsScreenState _value, $Res Function(_$_DetailsScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonDetailsEntity = freezed,
    Object? isLoading = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_DetailsScreenState(
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
    ));
  }
}

/// @nodoc

class _$_DetailsScreenState implements _DetailsScreenState {
  _$_DetailsScreenState(
      {this.pokemonDetailsEntity, this.isLoading = false, this.failure});

  @override
  final PokemonDetailsEntity? pokemonDetailsEntity;
  @override
  @JsonKey()
  final bool? isLoading;
  @override
  final PokemonFailure? failure;

  @override
  String toString() {
    return 'DetailsScreenState(pokemonDetailsEntity: $pokemonDetailsEntity, isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailsScreenState &&
            (identical(other.pokemonDetailsEntity, pokemonDetailsEntity) ||
                other.pokemonDetailsEntity == pokemonDetailsEntity) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, pokemonDetailsEntity, isLoading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailsScreenStateCopyWith<_$_DetailsScreenState> get copyWith =>
      __$$_DetailsScreenStateCopyWithImpl<_$_DetailsScreenState>(
          this, _$identity);
}

abstract class _DetailsScreenState implements DetailsScreenState {
  factory _DetailsScreenState(
      {final PokemonDetailsEntity? pokemonDetailsEntity,
      final bool? isLoading,
      final PokemonFailure? failure}) = _$_DetailsScreenState;

  @override
  PokemonDetailsEntity? get pokemonDetailsEntity;
  @override
  bool? get isLoading;
  @override
  PokemonFailure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_DetailsScreenStateCopyWith<_$_DetailsScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
