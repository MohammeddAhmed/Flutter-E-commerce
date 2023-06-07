import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:vp18_ui_app/screens/app/main_screen.dart';
import 'package:vp18_ui_app/screens/app/verify_screen.dart';
import 'package:vp18_ui_app/screens/auth/login_screen.dart';
import 'package:vp18_ui_app/screens/auth/sign_up_screen.dart';
import 'package:vp18_ui_app/screens/core/launch_screen.dart';
import 'package:vp18_ui_app/screens/outBoarding/outBoarding_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
          color: Colors.white,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),
      localizationsDelegates: const [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: const Locale('en'),
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],

      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen': (context) => const LaunchScreen(),
        '/outBoarding_screen': (context) => const OutBoardingScreen(),
        '/login_screen': (context) => const LoginScreen(),
        '/sign_up_screen': (context) => const SignUpScreen(),
        '/verify_screen': (context) => const VerifyScreen(),
        '/main_screen': (context) => const MainScreen(),
      },
    );
  }
}
