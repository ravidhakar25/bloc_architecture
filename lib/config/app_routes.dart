import 'package:bloc_architecture/ui/home/home_screen.dart';
import 'package:bloc_architecture/ui/login/login_screen.dart';
import 'package:bloc_architecture/ui/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

class AppRoutes {
  AppRoutes._();

  static const initial = '/';
  static const login = '/login';
  static const homeScreen = '/homeScreen';

  static Map<String, WidgetBuilder> define() {
    return {
      initial: (context) => const SplashScreen(),
      login: (context) => const LoginScreen(),
      homeScreen: (context) => const HomeScreen(),
    };
  }
}
