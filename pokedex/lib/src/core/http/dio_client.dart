import 'package:pokemon_dependencies/pokemon_dependencies.dart';

import 'interceptor/log_interceptor.dart';
class CustomDioClient {
  CustomDioClient._();

  static Dio initialize({
    required String baseUrl,
  }) {
    return Dio()
      ..options.baseUrl = baseUrl
      ..options.connectTimeout = const Duration(milliseconds: 25000)
      ..options.receiveTimeout = const Duration(milliseconds: 25000)
      ..options.validateStatus = validateStatus
      ..options.contentType = Headers.jsonContentType
      ..interceptors.addAll([
        CustomLogInterceptor(),
      ]);
  }
}

bool validateStatus(int? statusCode) => true;
