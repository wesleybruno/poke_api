import 'package:pokemon_dependencies/pokemon_dependencies.dart';

import './http.dart';

class HttpClient implements IHttpClient {
  HttpClient({
    required this.dioInstance,
  });

  final Dio dioInstance;

  Future<Response<T>> _makeRequest<T>(HttpRequest request) async {
    try {
      final headers = <String, dynamic>{
        Headers.contentTypeHeader: 'application/json',
        Headers.acceptHeader: 'application/json',
      };

      request.headers == null
          ? request.headers = headers
          : request.headers!.addAll(headers);

      final response = await dioInstance.request<T>(
        request.path,
        options: Options(
          headers: request.headers,
          method: request.method.methodString,
          responseType: ResponseType.json,
        ),
        queryParameters: request.queryParams,
        data: request.formData ?? request.data,
      );

      final result = HttpResponseHandler.handle(response);

      return Response(
        requestOptions: RequestOptions(
          path: request.path,
        ),
        data: result,
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<HttpResponse<T>> doRequest<T>(HttpRequest request) async {
    final response = await _makeRequest<T>(request);

    return HttpResponse<T>(
      statusCode: response.statusCode,
      data: response.data,
    );
  }
}
