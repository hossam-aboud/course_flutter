import 'package:flutter/material.dart';
import 'package:new_course/presentation/forgot_password/forgot_password_view.dart';
import 'package:new_course/presentation/login/login_view.dart';
import 'package:new_course/presentation/main/main_view.dart';
import 'package:new_course/presentation/register/register_view.dart';
import 'package:new_course/presentation/resources/strings_manager.dart';
import 'package:new_course/presentation/splash/splash_view.dart';
import 'package:new_course/presentation/store_details/store_details_view.dart';

class Routes {
  static const String splashRoute = '/';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String forgotPasswordRoute = '/forgotPassword';
  static const String mainRoute = '/main';
  static const String storeDetailsRoute = '/storeDetails';
}

class RouteGenerator {
  // get the route from the Routes class
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) =>  Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteDefined), // todo move this string to strings manager
        ),
        body: const Center(
          child: Text(AppStrings.noRouteDefined),
        ),
      ),
    );
  }
}
