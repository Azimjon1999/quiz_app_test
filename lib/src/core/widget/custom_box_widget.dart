import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/src/core/style/colors.dart';

class CustomBoxWidget extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  final Color backgroundColor;
  final EdgeInsets padding;
  const CustomBoxWidget({
    super.key,
    this.width = 300,
    this.height = 190,
    required this.child,
    this.backgroundColor = AppColors.white,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
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
