import 'package:dio/dio.dart';
import 'package:online_exam/core/networking/end_points.dart';
import 'package:online_exam/features/auth/data/models/login_response_model.dart';
import 'package:online_exam/features/auth/data/models/register_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseURL)
abstract class AuthApiService {
  factory AuthApiService(Dio dio, {String baseUrl}) = _AuthApiService;

  @GET(EndPoints.login)
  Future<LoginResponseModel> login();

  @GET(EndPoints.register)
  Future<RegisterResponseModel> register();
}
