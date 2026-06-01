import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/networking/api_error_model.dart';

part 'register_state.freezed.dart';
@freezed
class RegisterState<T> with _$RegisterState<T> {
  const factory RegisterState.initial() = _Initial;

  const factory RegisterState.loading() = RegisterLoading;
  const factory RegisterState.success({required T data}) = RegisterSuccess;
  const factory RegisterState.failure({ApiErrorModel? error}) = RegisterFailure;

}
