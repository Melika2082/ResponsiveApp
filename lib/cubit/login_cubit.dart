import 'package:login_ui_responsive_app/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState.login);

  void showForgotPassword() => emit(LoginState.forgotPassword);
  void showLoginForm() => emit(LoginState.login);
}
