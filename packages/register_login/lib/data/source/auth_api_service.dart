import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:register_login/core/constants/api_urls.dart';
import 'package:register_login/core/network/dio_client.dart';
import 'package:register_login/data/models/signup_req.dart';
import 'package:register_login/service_locator.dart';

abstract class AuthApiService {
  Future<Either> signin(SignupReqParams signupReqParam);
}

class AuthApiServiceImpl extends AuthApiService {
  @override
  Future<Either> signin(SignupReqParams signupReqParam) async {
    try {
      var response = await s1<DioClient>().post(
        ApiUrls.register,
        data: signupReqParam.toMap(),
      );

      return Right(response);
    } on DioException catch (e) {
      return Left(e.response?.data.toString());
    }
  }
}
