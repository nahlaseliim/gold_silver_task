import 'package:dio/dio.dart';
import 'package:gold_silver_task/core/networking/api_constants.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        receiveDataWhenStatusError: true, // if server return error (400, 500) ? return data with error
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
        // headers: {'Content-Type': 'application/json'},
      ), // BaseOptions
    ); // Dio
  }

  static Future<Response> getData({
    required String endPoint,
    Map<String, dynamic>? queryParameters,
  }) async {
    final res = await dio.get(endPoint, queryParameters: queryParameters);
    return res;
  }
}