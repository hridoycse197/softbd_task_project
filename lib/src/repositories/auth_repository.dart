

import '../config/utils/app_constants.dart';
import '../services/api_services.dart';

class AuthRepository with ApiService {
  Future<dynamic> createAccount(
      String username, String password, String email) async {
    final body = {"username": username, "email": email, "password": password};
    final response = await post(path: createAccountUrl, body: body);

    return response;
  }

  Future<dynamic> login(String username, String password) async {
    final body = {"username": username, "password": password};
    final response = await post(path: loginUrl, body: body);

    return response;
  }
}
