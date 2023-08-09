import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:via_green/wed_feature/authentication/widget_components/login_components.dart';
import 'package:via_green/wed_feature/authentication/widget_components/register_components.dart';

import '../../core/components/components.dart';
import 'login_cubit/login_cubit.dart';
import 'login_cubit/login_states.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isPass = true;
  bool isSwitch = true;
  var passwordController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: BlocConsumer<SignUpCubit, SignStates>(
        listener: (context, state) {

        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    'assets/contact-us/contact-us-removebg-preview (1).png',
                    fit: BoxFit.cover,
                  ),

                  Center(
                    child: SizedBox(
                      width: 400,
                      child: Column(
                        children: [
                          isSwitch
                              ? Text(
                                  'Welcome Back',
                                  style: textTheme(fontSize: 22),
                                )
                              : Text(
                                  'Create Account',
                                  style: textTheme(fontSize: 22),
                                ),
                          const SizedBox(
                            height: 60,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Column(
                              children: [
                                isSwitch
                                    ? LoginWidget(
                                        isSwitch: isSwitch,
                                        passwordController: passwordController,
                                        isPass: isPass,
                                        emailController: emailController,
                                      )
                                    : RegisterWidget(
                                        isSwitch: isSwitch,
                                        passwordController: passwordController,
                                        isPass: isPass,
                                        emailController: emailController,
                                        phoneController: phoneController,
                                        nameController: nameController,
                                      ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    isSwitch
                                        ? Text(
                                            'Don\'t Have Account?',
                                            style: textTheme(),
                                          )
                                        : Text(
                                            'Have Account?',
                                            style: textTheme(),
                                          ),
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          isSwitch = !isSwitch;
                                          print(isSwitch);
                                        });
                                      },
                                      child: Text(
                                        isSwitch ? 'Sign Up' : 'LOGIN',
                                        style: textTheme(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
