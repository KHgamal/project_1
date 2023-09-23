import 'package:project_1/core/usecase/usecase.dart';
import 'package:project_1/core/utils/typedefs.dart';
import 'package:project_1/src/features/auth/domain/entities/driver_entity.dart';
import 'package:project_1/src/features/auth/domain/repository/auth_repo.dart';

class SignUpUseCase
    extends UseCaseWithParams<DriverEntity, DriverEntity> {
  final AuthRepository _authRepository;
  SignUpUseCase(this._authRepository);
  @override
  ResultFuture<DriverEntity> call(DriverEntity p) async {
    return await _authRepository.signUp();
  }
}


