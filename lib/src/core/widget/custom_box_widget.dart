import 'package:flutter/widgets.dart';
import 'package:quiz_app/src/core/style/colors.dart';

class CustomBoxWidget extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  final Color backgroundColor;
  const CustomBoxWidget({
    super.key,
    this.width = 185,
    this.height = 300,
    required this.child,
    this.backgroundColor = AppColors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      transform: Matrix4.skewX(-0.1),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.5),
            blurRadius: 20,
            offset: const Offset(2, 5),
          ),
        ],
      ),
      child: child,
    );
  }
}
