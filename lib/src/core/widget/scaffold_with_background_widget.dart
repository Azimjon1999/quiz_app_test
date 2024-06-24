import 'package:flutter/material.dart';

class ScaffoldWithBackgroundWidget extends StatelessWidget {
  const ScaffoldWithBackgroundWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/background_image.png",
            ),
            fit: BoxFit.cover),
      ),
      child: child,
    );
  }
}
