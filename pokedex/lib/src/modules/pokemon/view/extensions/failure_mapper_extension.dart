import '../../../modules.dart';

extension FailureMapperExtension on PokemonFailure {
  String get errorMessage {
    if (this is NotFound) {
      return 'Pokemon não encontrado';
    }

    return 'Tivemos um problema, tente novamente!';
  }
}
