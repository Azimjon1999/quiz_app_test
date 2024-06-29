import 'package:flutter/material.dart';
import 'package:quiz_app/src/core/localization/words.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/widget/custom_box_widget.dart';


class ProfileUserResultWidget extends StatelessWidget {
  const ProfileUserResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: CustomBoxWidget(
          width: double.infinity,
          height: 100,
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Azimjon",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColors.c0048B5,
                    fontFamily: "IrishGrover"),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        Words.wins.tr(context),
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.c0048B5,
                            fontFamily: "IrishGrover"),
                      ),
                      const Text(
                        "20",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: AppColors.c0048B5,
                            fontFamily: "IrishGrover"),
                      ),
                    ],
                  ),
                   Column(
                    children: [
                      Text(
                  Words.lost.tr(context),
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.cFE3340,
                            fontFamily: "IrishGrover"),
                      ),
                      const Text(
                        "0",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: AppColors.cFE3340,
                            fontFamily: "IrishGrover"),
                      ),
                    ],
                  ),
                ],
              )
            ],
          )),
    );
  }
}
