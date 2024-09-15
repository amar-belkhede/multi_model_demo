import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:register_login/data/models/signup_req.dart';
import 'package:register_login/data/source/auth_api_service.dart';
import 'package:register_login/domain/repository/auth_repo.dart';
import 'package:register_login/service_locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signin(SignupReqParams signupReqParam) async {
    Either result = await s1<AuthApiService>().signin(signupReqParam);

    return result.fold(
      (error) {
        return Left(error);
      },
      (data) async {
        Response response = data;
        SharedPreferences sharedPreferences =
            await SharedPreferences.getInstance();
        sharedPreferences.setString('token', response.data['token']);
        return Right(response);
      },
    );
  }
}
