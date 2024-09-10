import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_itdigital/presentation/login/widgets/login_divider.dart';
import 'package:flutter_test_itdigital/presentation/login/widgets/login_text_field.dart';
import 'package:flutter_test_itdigital/presentation/login/widgets/login_social_logo.dart';
import 'package:flutter_test_itdigital/presentation/todo/pages/todo_free_page.dart';

import '../widgets/login_button.dart';
import '../widgets/login_checkbox.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _isCheckedNotifier = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            // Top image
            Image.asset(
              height: 200,
              'assets/images/logo.png',
            ),

            // Header text
            const Padding(
              padding: EdgeInsets.only(
                bottom: 20,
              ),
              child: Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            /// Email
            LoginTextField(
              controller: _emailController,
              label: 'Email',
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 32.0,
            ),

            /// Password
            LoginTextField(
              controller: _passwordController,
              label: 'Password',
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
            ),
            const SizedBox(
              height: 16.0,
            ),

            /// Checkbox
            LoginCheckbox(
              isCheckedNotifier: _isCheckedNotifier,
              label: 'Remember Me',
            ),
            const SizedBox(
              height: 20.0,
            ),

            // Button
            LoginButton(
              isEnabledNotifier: _isCheckedNotifier,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TodoFreePage(),
                  ),
                );
              },
              buttonText: 'LOGIN',
            ),

            // Forgot password
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),

            // Divider
            const LoginDivider(text: 'OR'),
            const SizedBox(
              height: 40.0,
            ),

            // Social Logo
            const LoginSocialLogo(),
            const SizedBox(
              height: 40.0,
            ),

            // Sign Up
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: RichText(
                  text: TextSpan(
                    text: 'Need an account? ',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.65),
                    ),
                    children: [
                      TextSpan(
                        text: 'SIGN UP',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.65),
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
