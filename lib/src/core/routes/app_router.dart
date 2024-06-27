import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:quiz_app/src/feature/auth/presentation/pages/login_page.dart";
import "package:quiz_app/src/feature/auth/presentation/pages/otp_page.dart";
import "package:quiz_app/src/feature/auth/presentation/pages/register_pae.dart";
import "package:quiz_app/src/feature/profile/presentation/pages/profile_page.dart";
import "../../feature/home/presentation/pages/home_page.dart";
import "../../feature/splash/presentation/pages/splash_page.dart";
import "app_route_name.dart";

final class AppRouter {
  static GoRouter router = GoRouter(
    initialLocation: AppRouteName.profilePage,
    debugLogDiagnostics: true,
    routes: <RouteBase>[
      GoRoute(
        path: AppRouteName.profilePage,
        builder: (BuildContext context, GoRouterState state) =>
             ProfilePage(),
      ),
      
      GoRoute(
        path: AppRouteName.chooseLanguage,
        builder: (BuildContext context, GoRouterState state) => const SplashPage(),
      ),

      /// Auth GoRoute
      GoRoute(
        path: AppRouteName.loginPage,
        builder: (BuildContext context, GoRouterState state) =>
            const LoginPage(),
      ),
      GoRoute(
        path: AppRouteName.registerPage,
        builder: (BuildContext context, GoRouterState state) =>
            const RegisterPage(),
        routes: [
          GoRoute(
            path: AppRouteName.otpPage,
            builder: (BuildContext context, GoRouterState state) =>
                const OtpPage(),
          ),
        ],
      ),

      /// Home
      GoRoute(
        path: AppRouteName.homePage,
        builder: (BuildContext context, GoRouterState state) =>
            const HomePage(),
      ),
    ],
  );
}
