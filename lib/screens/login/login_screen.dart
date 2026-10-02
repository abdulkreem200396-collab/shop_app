import 'package:flutter/material.dart';

import 'forgot_password_screen.dart';
import 'products_grid_screen.dart';

class LoginScreen
    extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() =>
      _LoginScreenState();
}

class _LoginScreenState
    extends State<LoginScreen> {
  final formKey =
      GlobalKey<FormState>();

  final emailController =
      TextEditingController();

  final passwordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
            24,
          ),

          child: Form(
            key: formKey,

            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment
                      .center,

              children: [
                Container(
                  height: 110,

                  width: 110,

                  padding:
                      const EdgeInsets.all(
                        20,
                      ),

                  decoration: BoxDecoration(
                    color: const Color(
                      0xffEFF6FF,
                    ),

                    borderRadius:
                        BorderRadius.circular(
                          30,
                        ),
                  ),

                  child: Image.asset(
                    "assets/img/shop_bag.png",
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                const Text(
                  "Welcome Back",

                  style: TextStyle(
                    fontSize: 28,

                    fontWeight:
                        FontWeight.bold,
                  ),
                ),

                const SizedBox(
                  height: 8,
                ),

                Text(
                  "Login to continue shopping",

                  style: TextStyle(
                    color: Colors
                        .grey
                        .shade600,

                    fontSize: 14,
                  ),
                ),

                const SizedBox(
                  height: 35,
                ),

                TextFormField(
                  controller:
                      emailController,

                  decoration:
                      const InputDecoration(
                        labelText:
                            "Email",

                        prefixIcon: Icon(
                          Icons
                              .email_outlined,
                        ),
                      ),

                  validator: (value) {
                    if (value == null ||
                        value.isEmpty) {
                      return "Enter email";
                    }

                    if (!value.contains(
                      "@",
                    )) {
                      return "Invalid email";
                    }

                    return null;
                  },
                ),

                const SizedBox(
                  height: 15,
                ),

                TextFormField(
                  controller:
                      passwordController,

                  obscureText: true,

                  decoration:
                      const InputDecoration(
                        labelText:
                            "Password",

                        prefixIcon: Icon(
                          Icons
                              .lock_outline,
                        ),
                      ),

                  validator: (value) {
                    if (value == null ||
                        value.isEmpty) {
                      return "Enter password";
                    }

                    if (value.length <
                        6) {
                      return "Minimum 6 characters";
                    }

                    return null;
                  },
                ),

                Align(
                  alignment: Alignment
                      .centerRight,

                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,

                        MaterialPageRoute(
                          builder: (
                            context,
                          ) => const ForgotPasswordScreen(),
                        ),
                      );
                    },

                    child: const Text(
                      "Forgot Password?",
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                SizedBox(
                  width:
                      double.infinity,

                  height: 52,

                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey
                          .currentState!
                          .validate()) {
                        Navigator.push(
                          context,

                          MaterialPageRoute(
                            builder: (
                              context,
                            ) => const ProductsGridScreen(),
                          ),
                        );
                      }
                    },

                    child: const Text(
                      "Login",
                    ),
                  ),
                ),

                const SizedBox(
                  height: 15,
                ),

                Row(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .center,

                  children: [
                    Text(
                      "Don't have an account?",

                      style: TextStyle(
                        color: Colors
                            .grey
                            .shade600,
                      ),
                    ),

                    TextButton(
                      onPressed: () {},

                      child: const Text(
                        "Sign Up",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
