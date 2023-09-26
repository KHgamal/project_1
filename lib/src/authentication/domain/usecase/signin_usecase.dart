import 'package:project_1/core/usecase/usecase.dart';
import 'package:project_1/core/utils/typedefs.dart';
import 'package:project_1/src/authentication/data/models/driver_model.dart';
import 'package:project_1/src/authentication/domain/entities/driver_entity.dart';
import 'package:project_1/src/authentication/domain/repository/auth_repo.dart';


class SignInUseCase
    extends UseCaseWithParams<DriverEntity, SignInUseCaseParams> {
  final AuthRepository _authRepository;
  SignInUseCase(this._authRepository);
  @override
  ResultFuture<DriverEntity> call(SignInUseCaseParams p) async {
    return _authRepository.signIn(LoginRequest(email: p.email, password: p.password));
  }
}

class SignInUseCaseParams {
  final String email;
  final String password;

  SignInUseCaseParams(
      {required this.email, required this.password});
}
