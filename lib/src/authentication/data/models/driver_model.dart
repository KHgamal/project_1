
import 'package:project_1/src/authentication/domain/entities/driver_entity.dart';

class DriverModel extends DriverEntity {
  const DriverModel({
    required super.id,
    required super.fullName,
    required super.email,
    required super.phoneNumber,
    required super.isActivated,
    required super.isAuthorized,
    required super.accessToken,
    required super.refreshToken,
  });
  factory DriverModel.fromJson(
      {required Map<String, dynamic> user,
      required Map<String, dynamic> jsonData}) {
    return DriverModel(
      id: user['_id'],
      fullName: user['fullName'],
      email: user['email'],
      phoneNumber: user['phoneNumber'],
      isActivated: user['isActivated'],
      isAuthorized: user['isAuthorized'],
      accessToken: jsonData['accessToken'],
      refreshToken: jsonData['refreshToken'],
    );
  }
}

class LoginRequest {
  final String email;
  final String password;

  LoginRequest({required this.email, required this.password});

  Map<String, dynamic> toJson() {
    return {"email": email, "password": password};
  }
}

class SignUpRequest {
  final String fullName;
  final String email;
  final String password;
  final String passwordConfirm;
  final String phoneNumber;
  final String idCard;
  final String transferDoc;
  final String playCard;
  final String vehicleLicense;
  final String driverLicense;
  final String identityResidence;

  const SignUpRequest(
      {required this.fullName,
      required this.email,
      required this.password,
      required this.passwordConfirm,
      required this.phoneNumber,
      required this.idCard,
      required this.transferDoc,
      required this.playCard,
      required this.vehicleLicense,
      required this.driverLicense,
      required this.identityResidence});

  Map<String, dynamic> toJson() {
    return {
      "fullName": fullName,
      "email": email,
      "password": password,
      "passwordConfirm": passwordConfirm,
      "phoneNumber": phoneNumber,
      "id_Card": idCard,
      "transfer_doc": transferDoc,
      "play_card": playCard,
      "vehicle_license": vehicleLicense,
      "driver_license": driverLicense,
      "identity_residence": identityResidence
    };
  }
}
