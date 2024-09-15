import 'package:dartz/dartz.dart';
import 'package:register_login/core/usecase/usecase.dart';
import 'package:register_login/data/models/signup_req.dart';
import 'package:register_login/domain/repository/auth_repo.dart';
import 'package:register_login/service_locator.dart';

class SignupUsecase implements Usecase<Either, SignupReqParams> {
  @override
  Future<Either> call({SignupReqParams? param}) async {
    return s1<AuthRepository>().signin(param!);
  }
}
