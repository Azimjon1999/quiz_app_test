import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:provider/provider.dart";
import "package:quiz_app/src/feature/auth/controller/auth_controller.dart";
import "package:quiz_app/src/feature/home/controller/home_controller.dart";
import "core/widget/app_material_context.dart";

class App extends StatelessWidget {
  const App({super.key});

  static void run() => runApp(
        MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => AuthController(),
            ),
            ChangeNotifierProvider(
              create: (context) => HomeController(),
            ),
          ],
          child: const App(),
        ),
      );

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
        designSize: const Size(450, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, Widget? child) => AppMaterialContext(),
      );
}
