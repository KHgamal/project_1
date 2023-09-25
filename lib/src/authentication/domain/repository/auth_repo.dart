import 'package:project_1/core/utils/typedefs.dart';
import 'package:project_1/src/authentication/domain/entities/driver_entity.dart';

abstract class AuthRepository {
  ResultFuture<DriverEntity> signUp ();
  ResultFuture<DriverEntity> signIn (String email,String password);
}