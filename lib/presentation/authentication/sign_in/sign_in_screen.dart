import 'package:fintech_app/presentation/authentication/components/text_field.dart';
import 'package:fintech_app/presentation/authentication/sign_in/sign_in_bloc/sign_in_bloc.dart';
import 'package:fintech_app/presentation/resources/app_colors.dart';
import 'package:fintech_app/presentation/resources/app_values.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool signInRequired = false;
  IconData iconPassword = CupertinoIcons.eye_fill;
  bool obscuredPassword = true;
  String? _errorMessage;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: AppTextField(
              textEditingController: emailController,
              hintText: 'Email',
              obscuredText: false,
              keyboardType: TextInputType.emailAddress,
              prefixIcon: const Icon(CupertinoIcons.mail_solid),
              errorMsg: _errorMessage,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email address.';
                }
                // Regex pattern for a simple email validation
                final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                if (!emailRegex.hasMatch(value)) {
                  return 'Please enter a valid email address.';
                }
                return null;
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: AppTextField(
              textEditingController: passwordController,
              hintText: 'Password',
              obscuredText: obscuredPassword,
              keyboardType: TextInputType.emailAddress,
              prefixIcon: const Icon(CupertinoIcons.lock_fill),
              errorMsg: _errorMessage,
              validator: (val) {
                if (val!.isEmpty) {
                  return 'Please fill in this field';
                } else {
                  return 'Please enter a valid password';
                }
              },
              suffixIcon: IconButton(
                onPressed: () {
                  setState(
                    () {
                      obscuredPassword = !obscuredPassword;
                      if (obscuredPassword) {
                        iconPassword = CupertinoIcons.eye_fill;
                      } else {
                        iconPassword = CupertinoIcons.eye_slash_fill;
                      }
                    },
                  );
                },
                icon: Icon(iconPassword),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          !signInRequired
              ? SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: TextButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {}
                    },
                    style: TextButton.styleFrom(
                        elevation: 3.0,
                        backgroundColor: AppColors.tertiary,
                        foregroundColor: AppColors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                        )),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppValues.s25,
                        vertical: AppValues.s7,
                      ),
                      child: Text(
                        "Sign In",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                )
              : const CircularProgressIndicator(),
        ],
      ),
    );
  }
}
