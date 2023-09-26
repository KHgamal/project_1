import 'package:project_1/core/usecase/usecase.dart';
import 'package:project_1/core/utils/typedefs.dart';
import 'package:project_1/src/authentication/data/models/driver_model.dart';
import 'package:project_1/src/authentication/domain/entities/driver_entity.dart';
import 'package:project_1/src/authentication/domain/repository/auth_repo.dart';


class SignUpUseCase
    extends UseCaseWithParams<DriverEntity, SignUpUseCaseParams> {
  final AuthRepository _authRepository;
  SignUpUseCase(this._authRepository);
  @override
  ResultFuture<DriverEntity> call(SignUpUseCaseParams p) async {
    return await _authRepository.signUp(SignUpRequest(
        fullName: p.fullName,
        email: p.email,
        password: p.password,
        passwordConfirm: p.passwordConfirm,
        phoneNumber: p.phoneNumber,
        idCard: p.idCard,
        transferDoc: p.transferDoc,
        playCard: p.playCard,
        vehicleLicense: p.vehicleLicense,
        driverLicense: p.driverLicense,
        identityResidence: p.identityResidence));
  }
}

class SignUpUseCaseParams {
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

  const SignUpUseCaseParams(
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
}
