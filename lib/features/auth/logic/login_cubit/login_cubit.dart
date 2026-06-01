import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_exam/core/networking/api_result.dart';
import 'package:online_exam/features/auth/data/repo/auth_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.repo) : super(LoginState.initial());
  final AuthRepo repo;

  void login() async {
    emit(LoginState.loading());
    final result = await repo.login();
    result.when(
      success: (data) => emit(LoginState.success(data: data)),
      failure: (error) => emit(LoginState.failure(error: error)),
    );
  }
}
