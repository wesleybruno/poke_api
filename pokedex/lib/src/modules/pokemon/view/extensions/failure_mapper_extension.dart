import '../../../modules.dart';

extension FailureMapperExtension on PokemonFailure {
  String get errorMessage {
    if (this is NotFoundFailure) {
      return 'Pokemon não encontrado';
    }

    return 'Tivemos um problema, tente novamente!';
  }
}
