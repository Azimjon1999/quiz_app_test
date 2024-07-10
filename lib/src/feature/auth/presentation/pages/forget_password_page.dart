import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:go_router/go_router.dart";
import "package:provider/provider.dart";
import "package:quiz_app/src/core/localization/words.dart";
import "package:quiz_app/src/core/style/colors.dart";
import "package:quiz_app/src/core/widget/app_title_widget.dart";
import "package:quiz_app/src/core/widget/custom_button_widget.dart";
import "package:quiz_app/src/core/widget/my_textfield_widget.dart";
import "package:quiz_app/src/feature/auth/controller/auth_controller.dart";
import "../../../../core/widget/appbar_leading_widget.dart";
import "../../../../core/widget/scaffold_with_background_widget.dart";

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AuthController>(context);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: ScaffoldWithBackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34),
          child: Column(
            children: [
              const SizedBox(height: 50),
              AppbarLeadingWidget(
                func: () {
                  context.pop();
                },
              ),
              SizedBox(height: 170.h),
              const AppTitleWidget(),
              SizedBox(height: 50.h),
              MyTextField(
                controller: provider.emailC,
                text: Words.emailAdress.tr(context),
                type: TextInputType.emailAddress,
              ),
              SizedBox(height: 16.h),
              CustomButtonWidget(
                func: () => provider.forgotPasswordE(context),
                child: Text(
                  Words.Continue.tr(context),
                  style: const TextStyle(
                    fontSize: 30,
                    color: AppColors.white,
                    fontFamily: 'IrishGrover',
                  ),
                ),
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}
