import 'package:flutter/material.dart';

import 'screens/login_screen.dart';

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "Shop App",

      theme: ThemeData(
        fontFamily: "Poppins",

        scaffoldBackgroundColor:
            const Color(0xffF8FAFF),

        colorScheme:
            ColorScheme.fromSeed(
              seedColor: const Color(
                0xff2563EB,
              ),
            ),

        appBarTheme: const AppBarTheme(
          backgroundColor: Color(
            0xff2563EB,
          ),

          elevation: 0,

          centerTitle: true,

          titleTextStyle: TextStyle(
            fontFamily: "Poppins",

            fontSize: 18,

            fontWeight: FontWeight.w600,

            color: Colors.white,
          ),
        ),

        inputDecorationTheme:
            InputDecorationTheme(
              filled: true,

              fillColor: Colors.white,

              contentPadding:
                  const EdgeInsets.symmetric(
                    horizontal: 18,

                    vertical: 16,
                  ),

              border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(
                      15,
                    ),

                borderSide:
                    BorderSide.none,
              ),
            ),

        elevatedButtonTheme:
            ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color(
                      0xff2563EB,
                    ),

                foregroundColor:
                    Colors.white,

                minimumSize: const Size(
                  double.infinity,

                  52,
                ),

                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(
                        14,
                      ),
                ),

                textStyle:
                    const TextStyle(
                      fontFamily:
                          "Poppins",

                      fontSize: 16,

                      fontWeight:
                          FontWeight
                              .w600,
                    ),
              ),
            ),
      ),

      home: const LoginScreen(),
    );
  }
}
