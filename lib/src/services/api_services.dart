import 'dart:core';
import 'package:dio/dio.dart';
import '../config/utils/env.dart';
import '../config/utils/helper.dart';

mixin ApiService {
  final _dio = Dio();

  Future<Response?> get({
    required String path,
    Map<String, dynamic>? queryParameters,
    bool authentication = false,
  }) async {
    try {
      // final latLng = await locationC.getCurrentLocation();
      final response = await _dio.get(
        '${ENV.baseUrl}/$path',
        queryParameters: queryParameters,
        options: Options(
          followRedirects: false,
          // will not throw errors
          validateStatus: (status) => true,
          headers: {
            'Content-Type': 'application/json',
            'Authorization': authentication ? 'token' : null
          },
        ),
      );
      return response;
    } catch (e) {
      kLog(e);
      throw ('Something went wrong');
    }
  }

  Future<Response?> post({
    required String path,
    Map<String, dynamic>? body,
  }) async {
    try {
 
      kLog('${ENV.baseUrl}/$path');
      // final latLng = await locationC.getCurrentLocation();
      final response = await _dio.post(
        '${ENV.baseUrl}/$path',
        data: body,
        options: Options(
          followRedirects: false,
          // will not throw errors
          validateStatus: (status) => true,
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
      return response;
    } catch (e, s) {
      kLog(e);
      kError(s);
    } finally {
    }
    return null;
  }
}
