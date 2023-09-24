

import 'package:project_1/core/utils/typedefs.dart';
import 'package:project_1/src/features/auth/domain/entities/driver_entity.dart';

abstract class AuthRepository {
  //TODO : Waiting for models to add params types
  ResultFuture<DriverEntity> signUp ();
  ResultFuture<DriverEntity> signIn ();
}