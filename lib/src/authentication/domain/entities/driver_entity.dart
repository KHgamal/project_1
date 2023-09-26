import 'package:equatable/equatable.dart';

class DriverEntity extends Equatable {
  final String id;
  final String fullName;
  final String email;
  final String phoneNumber;
  final bool isActivated;
  final bool isAuthorized;
  final String accessToken;
  final String refreshToken;

  const DriverEntity(
      {required this.id,
      required this.fullName,
      required this.email,
      required this.phoneNumber,
      required this.isActivated,
      required this.isAuthorized,
      required this.accessToken,
      required this.refreshToken,});

  @override
  List<Object?> get props => [id];
}

