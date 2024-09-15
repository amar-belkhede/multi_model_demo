import 'package:get_it/get_it.dart';
import 'package:register_login/core/network/dio_client.dart';
import 'package:register_login/data/repository/auth_repo_impl.dart';
import 'package:register_login/data/source/auth_api_service.dart';
import 'package:register_login/domain/repository/auth_repo.dart';
import 'package:register_login/domain/usecase/signup_usercase.dart';

final s1 = GetIt.instance;

void setupServiceLocator() {
  s1.registerSingleton<DioClient>(DioClient());

  //service
  s1.registerSingleton<AuthApiService>(AuthApiServiceImpl());

  //repository
  s1.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  //Usecase
  s1.registerSingleton<SignupUsecase>(SignupUsecase());
}
