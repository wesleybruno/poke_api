import 'package:pokemon_dependencies/pokemon_dependencies.dart';

enum RequestType {
  get('get'),
  post('post');

  const RequestType(
    this.methodString,
  );

  final String methodString;
}

abstract class IHttpClient {
  Future<HttpResponse<T>> doRequest<T>(HttpRequest request);
}

class HttpRequest {
  HttpRequest({
    required this.path,
    required this.method,
    this.formData,
    this.mockFile,
    this.data,
    this.headers,
    this.params,
    this.queryParams,
  });

  dynamic data;
  FormData? formData;
  Map<String, dynamic>? headers;
  Map<String, dynamic>? params;
  Map<String, dynamic>? queryParams;
  RequestType method;
  String path;
  String? mockFile;
}

class HttpResponse<T> {
  HttpResponse({
    required this.statusCode,
    this.message,
    this.data,
  });

  final int? statusCode;
  final String? message;
  final T? data;

  HttpResponse copyWith({
    int? statusCode,
    String? message,
    T? data,
  }) {
    return HttpResponse<T>(
      statusCode: statusCode ?? this.statusCode,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }
}
