// ignore_for_file: depend_on_referenced_packages

import '../../../modules.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_screen_state.freezed.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  factory HomeScreenState({
    @Default([]) List<PokemonEntity> listPokemons,
    @Default([]) List<PokemonEntity> filteredList,
    PokemonDetailsEntity? pokemonDetailsEntity,
    @Default(false) bool? isLoading,
    PokemonFailure? failure,
    String? errorMessage,
    @Default(false) bool? loadingMore,
    @Default(0) int? offset,
    @Default(30) int? limit,
    String? searchTerm,
  }) = _HomeScreenState;

  factory HomeScreenState.initial() => HomeScreenState();
}
