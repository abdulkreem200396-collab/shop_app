import 'package:flutter/material.dart';

class ForgotPasswordScreen
    extends StatefulWidget {
  const ForgotPasswordScreen({
    super.key,
  });

  @override
  State<ForgotPasswordScreen>
  createState() =>
      _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState
    extends
        State<ForgotPasswordScreen> {
  final formKey =
      GlobalKey<FormState>();

  final emailController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Forgot Password",
        ),
      ),

      body: Padding(
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
                height: 100,

                width: 100,

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
                        25,
                      ),
                ),

                child: Image.asset(
                  "assets/img/lock_icon.png",
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              const Text(
                "Reset Password",

                style: TextStyle(
                  fontSize: 26,

                  fontWeight:
                      FontWeight.bold,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              const Text(
                "Enter your email to receive reset link",
              ),

              const SizedBox(
                height: 30,
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

                  return null;
                },
              ),

              const SizedBox(
                height: 25,
              ),

              ElevatedButton(
                onPressed: () {
                  if (formKey
                      .currentState!
                      .validate()) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Reset link sent",
                        ),
                      ),
                    );
                  }
                },

                child: const Text(
                  "Send Reset Link",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
