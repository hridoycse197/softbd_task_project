



import 'package:dio/dio.dart';

import '../config/utils/app_constants.dart';
import '../services/api_services.dart';

class DataRepository with ApiService {
  Future<Response> fetchData() async {
    Response? response = await get(
      path: key,
    );
    return response!;
  }
}
