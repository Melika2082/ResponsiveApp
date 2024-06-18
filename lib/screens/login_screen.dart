import 'package:login_ui_responsive_app/widgets/welcome_text.dart';
import 'package:login_ui_responsive_app/widgets/textfield.dart';
import 'package:login_ui_responsive_app/cubit/login_cubit.dart';
import 'package:login_ui_responsive_app/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.grey,
          body: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: AnimatedCrossFade(
                duration: const Duration(milliseconds: 400),
                firstChild: _buildLoginForm(context),
                secondChild: _buildForgotPasswordForm(context),
                crossFadeState: state == LoginState.forgotPassword
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
              ),
            ),
          ),
        );
      },
    );
  }

  ConstrainedBox _buildLoginForm(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: Card(
        elevation: 8.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const BuildWelcomeText(),
              const SizedBox(height: 24),
              BuildTextField(
                label: 'Email',
                controller: _emailController,
                hintText: 'email@domain.com',
              ),
              const SizedBox(height: 16),
              BuildTextField(
                label: 'Password',
                controller: _passwordController,
                hintText: '*********',
                obscureText: true,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: TextButton(
                  onPressed: () {
                    context.read<LoginCubit>().showForgotPassword();
                  },
                  child: const Text(
                    'Forgot password?',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ConstrainedBox _buildForgotPasswordForm(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: Card(
        elevation: 8.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const BuildWelcomeText(),
              const SizedBox(height: 24),
              BuildTextField(
                label: 'Email',
                controller: _emailController,
                hintText: 'email@domain.com',
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
