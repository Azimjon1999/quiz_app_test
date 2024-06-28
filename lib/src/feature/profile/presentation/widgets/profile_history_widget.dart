import 'package:flutter/material.dart';
import 'package:quiz_app/src/feature/profile/presentation/widgets/profile_history_listtitle_widget.dart';
import '../../../../core/style/colors.dart';

class ProfileHistoryWidget extends StatelessWidget {
  const ProfileHistoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Histories",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColors.c0048B5,
                fontFamily: "IrishGrover"),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (itemBuilder, index) =>
                      const ProfileHistoryListTileWidget(),
                  separatorBuilder: (separatorBuilder, index) => const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Divider(
                          color: AppColors.cD9D9D9,
                        ),
                      ),
                  itemCount: 10))
        ],
      ),
    );
  }
}
