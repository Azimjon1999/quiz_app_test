import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:quiz_app/src/feature/auth/presentation/pages/login_page.dart";
import "package:quiz_app/src/feature/auth/presentation/pages/new_password_cread_page.dart";
import "package:quiz_app/src/feature/auth/presentation/pages/otp_page.dart";
import "package:quiz_app/src/feature/auth/presentation/pages/register_page.dart";
import "package:quiz_app/src/feature/home/presentation/pages/home_page.dart";
import "package:quiz_app/src/feature/single_player/presentation/pages/single_player_page.dart";
import "package:quiz_app/src/feature/profile/presentation/pages/profile_page.dart";
import "package:quiz_app/src/feature/single_player/presentation/pages/single_quiz.dart";
import "package:quiz_app/src/feature/single_player/presentation/pages/single_result_page.dart";
import "package:quiz_app/src/feature/updateInfo/presemtation/pages/update_info_page.dart";
import "../../feature/auth/presentation/pages/forget_otp_page.dart";
import "../../feature/auth/presentation/pages/forget_password_page.dart";
import "../../feature/init/presentation/pages/choose_language_page.dart";
import "../../feature/init/presentation/pages/splash_page.dart";
import "../../feature/auth/presentation/pages/forget_otp_page.dart";
import "../../feature/auth/presentation/pages/forget_password_page.dart";
import "app_route_name.dart";

final class AppRouter {
  static GoRouter router = GoRouter(
    initialLocation: AppRouteName.homePage,
    debugLogDiagnostics: true,
    routes: <RouteBase>[
      GoRoute(
        path: AppRouteName.splashPage,
        builder: (BuildContext context, GoRouterState state) =>
            const SplashPage(),
      ),

      GoRoute(
        path: AppRouteName.chooseLanguage,
        builder: (BuildContext context, GoRouterState state) =>
            const ChooseLanguagePage(),
      ),

      /// Auth GoRoute
      GoRoute(
        path: AppRouteName.loginPage,
        builder: (BuildContext context, GoRouterState state) =>
            const LoginPage(),
        routes: [
          GoRoute(
              path: AppRouteName.forgetPassword,
              builder: (BuildContext context, GoRouterState state) =>
                  const ForgetPasswordPage(),
              routes: [
                GoRoute(
                  path: AppRouteName.otpForgetPage,
                  builder: (BuildContext context, GoRouterState state) =>
                      const OtpForgetPage(),
                ),
              ]),
        ],
      ),
      GoRoute(
        path: AppRouteName.nemPasswordPage,
        builder: (BuildContext context, GoRouterState state) =>
            const NewPasswordCreadPage(),
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
        routes: [
          GoRoute(
            path: AppRouteName.updateInfoPage,
            builder: (context, state) => const UpdateInfoPage(),
          ),
          GoRoute(
            path: AppRouteName.singlePlayerPage,
            builder: (context, state) => const SinglePlayerPage(),
            routes: [
              GoRoute(
                path: AppRouteName.singlePlayerQuiz,
                builder: (context, state) => SingleQuiz(
                  theme: state.extra as String,
                ),
                routes: [
                  GoRoute(
                    path: AppRouteName.singlePlayerQuizResult,
                    builder: (context, state) => SingleResultPage(
                      data: state.extra as List<int>,
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
      GoRoute(
        path: AppRouteName.profilePage,
        builder: (BuildContext context, GoRouterState state) =>
            const ProfilePage(),
      )
    ],
  );
}
