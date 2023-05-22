import 'package:pokemon_dependencies/pokemon_dependencies.dart';

import './http.dart';

class HttpResponseHandler {
  static dynamic handle(Response response, [bool isPdf = false]) {
    switch (response.statusCode) {
      case 200:
      case 201:
        return _handledata(
          response.data,
          empty: response.data.isEmpty,
        );
      case 204:
        return null;
      case 400:
        throw BadRequestException(error: response.data);
      case 401:
        throw UnauthorizedException(error: response.data);
      case 403:
        throw ForbiddenException(error: response.data);
      case 404:
        throw NotFoundException(error: response.data);

      case 422:
        throw UnprocessableException(error: response.data);

      default:
        throw ServerErrorException(
          error: response.data,
        );
    }
  }

  static dynamic _handledata(
    dynamic data, {
    bool empty = true,
  }) {
    if (empty) {
      return null;
    }

    return data;
  }
}
