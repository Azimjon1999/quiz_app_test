import 'package:flutter/material.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/widget/custom_box_widget.dart';

class CustomButtonWidget extends StatelessWidget {
  final Color buttonColor;
  final double witdh;
  final double height;
  final Widget child;
  final double elevation;
  final VoidCallback func;
  final BorderSide borderSide;

  const CustomButtonWidget({
    super.key,
    this.buttonColor = AppColors.c0048B5,
    this.witdh = double.infinity,
    this.height = 62,
    this.borderSide = BorderSide.none,
    this.elevation = 0,
    required this.func,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBoxWidget(
      width: witdh,
      height: height,
      child: MaterialButton(
        elevation: elevation,
        height: height,
        minWidth: witdh,
        onPressed: func,
        color: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: borderSide,
        ),
        child: child,
      ),
    );
  }
}
