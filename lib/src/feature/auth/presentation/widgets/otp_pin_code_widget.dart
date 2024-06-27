import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:pinput/pinput.dart';
import 'package:quiz_app/src/core/style/colors.dart';
import 'package:quiz_app/src/core/widget/custom_box_widget.dart';

class OtpPinCodeWidget extends StatelessWidget {
  final TextEditingController otp;
  // final String otp;
  const OtpPinCodeWidget({
    super.key,
    required this.otp,
  });

  @override
  Widget build(BuildContext context) {
    // final defaultPinTheme = PinTheme(
    //   width: 68,
    //   height: 60,
    //   textStyle: const TextStyle(
    //     fontSize: 30,
    //     color: AppColors.c7A7A7A,
    //     fontFamily: 'IrishGrover',
    //   ),
    //   decoration: BoxDecoration(
    //     color: Colors.white,
    //     borderRadius: BorderRadius.circular(20),
    //     border: Border.all(color: Colors.transparent),
    //   ),
    // );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomBoxWidget(
          width: 68,
          height: 60,
          child: TextField(
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.c7A7A7A,
              fontFamily: 'IrishGrover',
              fontSize: 30,
            ),
            onChanged: (value) {
              if (value.length == 1) {
                otp.text += value;

                FocusScope.of(context).nextFocus();
              }
            },
            // onEditingComplete: () {
            //   FocusScope.of(context).nextFocus();
            // },
            cursorColor: AppColors.c7A7A7A,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
            decoration: const InputDecoration(
              hintText: '0',
              hintStyle: TextStyle(
                color: AppColors.c7A7A7A,
                fontSize: 30,
                fontFamily: 'IrishGrover',
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        CustomBoxWidget(
          width: 68,
          height: 60,
          child: TextField(
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.c7A7A7A,
              fontFamily: 'IrishGrover',
              fontSize: 30,
            ),
            onChanged: (value) {
              if (value.length == 1) {
                otp.text += value;
                FocusScope.of(context).nextFocus();
              }
            },
            // onEditingComplete: () {
            //   FocusScope.of(context).nextFocus();
            // },
            cursorColor: AppColors.c7A7A7A,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
            decoration: const InputDecoration(
              hintText: '0',
              hintStyle: TextStyle(
                color: AppColors.c7A7A7A,
                fontSize: 30,
                fontFamily: 'IrishGrover',
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        CustomBoxWidget(
          width: 68,
          height: 60,
          child: TextField(
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.c7A7A7A,
              fontFamily: 'IrishGrover',
              fontSize: 30,
            ),
            onChanged: (value) {
              if (value.length == 1) {
                otp.text += value;
                FocusScope.of(context).nextFocus();
              }
            },
            // onEditingComplete: () {
            //   FocusScope.of(context).nextFocus();
            // },
            cursorColor: AppColors.c7A7A7A,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
            decoration: const InputDecoration(
              hintText: '0',
              hintStyle: TextStyle(
                color: AppColors.c7A7A7A,
                fontSize: 30,
                fontFamily: 'IrishGrover',
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        CustomBoxWidget(
          width: 68,
          height: 60,
          child: TextField(
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.c7A7A7A,
              fontFamily: 'IrishGrover',
              fontSize: 30,
            ),
            onChanged: (value) {
              if (value.length == 1) {
                otp.text += value;

                FocusScope.of(context).nextFocus();
              }
            },
            // onEditingComplete: () {
            //   FocusScope.of(context).nextFocus();
            // },
            cursorColor: AppColors.c7A7A7A,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
            decoration: const InputDecoration(
              hintText: '0',
              hintStyle: TextStyle(
                color: AppColors.c7A7A7A,
                fontSize: 30,
                fontFamily: 'IrishGrover',
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );

    // return Pinput(
    //   controller: otp,
    //   length: 4,
    //   defaultPinTheme: defaultPinTheme,
    //   focusedPinTheme: defaultPinTheme,
    //   onCompleted: (pin) => debugPrint(pin),
    // );
  }
}
