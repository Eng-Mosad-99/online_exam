import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:online_exam/core/networking/api.dart';
import 'package:online_exam/features/auth/data/api/auth_api_service.dart';
import 'package:online_exam/features/auth/data/repo/auth_repo.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //  & Api Service
  getIt.registerLazySingleton<API>(() => API());

  // Auth Repo
  getIt.registerLazySingleton<AuthApiService>(() => AuthApiService(getIt()));
  getIt.registerLazySingleton<AuthRepo>(() => AuthRepo(apiService: getIt()));
}
