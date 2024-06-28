import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/src/core/style/images.dart';
import 'package:quiz_app/src/core/widget/app_material_context.dart';
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
                    shouldGoNext: false,
                    localController: localController,
                  ),
                ),
              );
            },
          );
        },
        chahgeInfoOnTap: () => provider.navigateToChangeInfo(context),
        logOutOnTap: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomButtonWidget(
        width: 130,
        func: () => provider.navigateToProfile(context),
        child: AppImages.userIcon,
      ),
      body: ScaffoldWithBackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              SizedBox(height: 46.h),
              HomeLeadingWidget(onTap: () => provider.openDrawer()),
              HomeBodyWidgets(
                onTap1: () => provider.navigateToSinglePayer(context),
                onTap2: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
