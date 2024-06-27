import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/src/core/routes/app_route_name.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/style/images.dart';
import 'package:quiz_app/src/core/widget/app_title_widget.dart';
import 'package:quiz_app/src/core/widget/custom_button_widget.dart';
import 'package:quiz_app/src/core/widget/language_widget.dart';
import 'package:quiz_app/src/core/widget/scaffold_with_background_widget.dart';
import 'package:quiz_app/src/feature/home/controller/home_controller.dart';
import 'package:quiz_app/src/feature/home/presentation/widgets/home_body_widgets.dart';
import 'package:quiz_app/src/feature/home/presentation/widgets/home_drawer_widget.dart';
import 'package:quiz_app/src/feature/home/presentation/widgets/home_leading_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeController>(context);
    return Scaffold(
      key: provider.scaffoldKey,
      drawer: HomeDrawerWidget(
        languageOnTap: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                alignment: Alignment.center,
                height: 310.h,
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: Center(
                  child: LanguagesWidget(
                    uzbekOnTap: () {},
                    russinOnTap: () {},
                    englishOnTap: () {},
                  ),
                ),
              );
            },
          );
        },
        chahgeInfoOnTap: () {
          context.go('${AppRouteName.homePage}${AppRouteName.updateInfoPage}');
        },
        logOutOnTap: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomButtonWidget(
        witdh: 130,
        func: () {},
        child: AppImages.userIcon,
      ),
      body: ScaffoldWithBackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              SizedBox(height: 46.h),
              HomeLeadingWidget(onTap: () => provider.openDrawer),
              HomeBodyWidgets(onTap1: (){}, onTap2: (){},),
            ],
          ),
        ),
      ),
    );
  }
}
