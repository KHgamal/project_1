import 'package:dartz/dartz.dart';
import 'package:project_1/core/errors/exceptions.dart';
import 'package:project_1/core/errors/failure.dart';
import 'package:project_1/core/utils/typedefs.dart';
import 'package:project_1/src/authentication/data/data_sources/auth_remote_data_source.dart';
import 'package:project_1/src/authentication/data/models/driver_model.dart';
import 'package:project_1/src/authentication/domain/entities/driver_entity.dart';
import 'package:project_1/src/authentication/domain/repository/auth_repo.dart';


class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;

  AuthRepositoryImpl(this._authRemoteDataSource);

  @override
  ResultFuture<DriverEntity> signIn(LoginRequest loginRequest) async {
    try {
      final result =
          await _authRemoteDataSource.signIn(loginRequest);
      return Right(result);
    } on ApiException catch (e) {
      return Left(ApiFailure.fromException(e));
    }
  }

  @override
  ResultFuture<DriverEntity> signUp(SignUpRequest signUpRequest) async{
    try {
     
      final result = await _authRemoteDataSource.signUp(signUpRequest);
      return Right(result);
    } on ApiException catch (e) {
      return Left(ApiFailure.fromException(e));
    }
  }
}
