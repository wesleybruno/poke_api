// ignore_for_file: depend_on_referenced_packages

import 'package:pokedex/src/modules/modules.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'details_screen_state.freezed.dart';

@freezed
class DetailsScreenState with _$DetailsScreenState {
  factory DetailsScreenState({
    PokemonDetailsEntity? pokemonDetailsEntity,
    @Default(false) bool? isLoading,
    PokemonFailure? failure,
  }) = _DetailsScreenState;

  factory DetailsScreenState.initial() => DetailsScreenState();
}
