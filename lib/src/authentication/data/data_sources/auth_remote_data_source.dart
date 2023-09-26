import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project_1/core/errors/exceptions.dart';
import 'package:project_1/core/utils/typedefs.dart';
import 'package:project_1/src/authentication/data/models/driver_model.dart';

abstract class AuthRemoteDataSource {
  Future<DriverModel> signIn(LoginRequest loginRequest);
  Future<DriverModel> signUp(SignUpRequest signUpRequest);
}

Uri signUpUrl = Uri.parse("http://192.168.56.1:3000/api/v1/auth/signup-driver");
Uri signInUrl = Uri.parse("http://192.168.56.1:3000/api/v1/auth/signin");

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  AuthRemoteDataSourceImpl(this._client);

  final http.Client _client;
  @override
  Future<DriverModel> signIn(LoginRequest loginRequest) async {
    final response = await _client.post(signUpUrl, body: loginRequest.toJson());
    if (response.statusCode != 200 && response.statusCode != 201) {
      throw ApiException(error: response.body, code: response.statusCode);
    }
    final data = jsonDecode(response.body) as DataMap;
    return DriverModel.fromJson(
        user: data['data']['user'], jsonData: data['data']);
  }

  @override
  Future<DriverModel> signUp(SignUpRequest signUpRequest) async {
    final response = await _client.post(signUpUrl, body: signUpRequest.toJson());
    if (response.statusCode != 200 && response.statusCode != 201) {
      throw ApiException(error: response.body, code: response.statusCode);
    }
    final data = jsonDecode(response.body) as DataMap;
    return DriverModel.fromJson(
        user: data['data']['newUser'], jsonData: data['data']);
  }
}
