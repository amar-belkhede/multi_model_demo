import 'package:dartz/dartz.dart';
import 'package:register_login/data/models/signup_req.dart';

abstract class AuthRepository {
  Future<Either> signin(SignupReqParams signupReqParams);
}
