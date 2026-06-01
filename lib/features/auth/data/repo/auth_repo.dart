import 'package:online_exam/core/networking/api_error_handler.dart';
import 'package:online_exam/core/networking/api_result.dart';
import 'package:online_exam/features/auth/data/api/auth_api_service.dart';
import 'package:online_exam/features/auth/data/models/login_response_model.dart';

class AuthRepo {
  final AuthApiService apiService;

  AuthRepo({required this.apiService});

 Future<ApiResult<LoginResponseModel>> login() async{
    try {
      final response = await apiService.login();
      return ApiResult.success(response); 
    } catch (e) {
      print(e); 
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

}