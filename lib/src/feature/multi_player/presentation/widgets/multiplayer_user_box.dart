import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/src/core/style/text_style.dart';

class MultiplayerUserBox extends StatelessWidget {
  String name;
  String id;
   MultiplayerUserBox({super.key, required this.name, required this.id});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 24,
            backgroundColor: Colors.white,
          ),
          Text(name,style: const AppTextStyle().users?.copyWith(fontSize: 24.sp),),
          Text(id,style: const AppTextStyle().users?.copyWith(fontSize: 20.sp),),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.5),
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.5),
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.5),
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.5),
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.5),
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.5),
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.5),
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.5),
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.5),
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.white,
                ),
              ),


            ],
          )
        ],
      ),
    );
  }
}