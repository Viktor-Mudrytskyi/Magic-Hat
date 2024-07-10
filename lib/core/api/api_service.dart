import 'package:dio/dio.dart';
import 'package:magic_hat/core/api/api_methods.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

/// Singleton for api connection
class ApiService {
  ApiService(this.baseUrl) {
    _dio = _getDio();
  }
  final String baseUrl;

  late final Dio _dio;

  Dio _getDio() {
    final Dio dio = Dio(
      BaseOptions(baseUrl: baseUrl),
    );

    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        responseBody: false,
        responseHeader: true,
        maxWidth: 120,
      ),
    );

    return dio;
  }

  /// This method should be the oly interaction with rest api
  Future<dynamic> request({
    required ApiMethods method,
    required String url,
    Map<String, dynamic>? data,
    Map<String, dynamic>? headers,
  }) async {
    late Response<dynamic> response;

    switch (method) {
      case ApiMethods.get:
        response = await _dio.get(
          url,
          queryParameters: data,
          options: Options(headers: headers),
        );
      case ApiMethods.post:
        response = await _dio.post(
          url,
          data: data,
          options: Options(headers: headers),
        );
      case ApiMethods.patch:
        response = await _dio.patch(
          url,
          data: data,
          options: Options(headers: headers),
        );
      case ApiMethods.delete:
        response = await _dio.delete(
          url,
          data: data,
          options: Options(headers: headers),
        );
    }
    return response.data;
  }
}
