import 'dart:convert';
import 'dart:core';
import 'dart:io';
import 'package:dio/dio.dart';
import '../config/utils/app_exceptions.dart';
import '../config/utils/env.dart';
import '../config/utils/helper.dart';
import '../helpers/snackbar_helper.dart';

mixin ApiService {
  final _dio = Dio();

  Future<Response?> get({
    required String path,
    Map<String, dynamic>? queryParameters,
    bool authentication = false,
  }) async {
    try {
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

      return returnResponse(response);
    } on SocketException {
      SnackbarHelper.errorSnackbar(
          'No Internet', 'Connect Internet and Try again');
      throw InternetException();
    } on RequestTimeOut {
      throw RequestTimeOut('');
    }
  }

  dynamic returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = response;
        return responseJson;

      default:
        throw FetchDataException(
            'Error accoured while communicating with server ${response.statusCode}');
    }
  }
}
