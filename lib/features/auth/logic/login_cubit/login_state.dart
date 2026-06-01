import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/networking/api_error_model.dart';

part 'login_state.freezed.dart';
@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;

  const factory LoginState.loading() = LoginLoading;
  const factory LoginState.success({required T data}) = LoginSuccess;
  const factory LoginState.failure({ApiErrorModel? error}) = LoginFailure;

}
