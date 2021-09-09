import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/model/restaurant_model.dart';

class TempleteRes extends StatelessWidget {
  const TempleteRes({Key? key,this.restaurants,}) : super(key: key);

  final Restaurant? restaurants;

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.only(left: 0.w, right: 0.w),
          width: 147.w,
          height: 184.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22.r),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6.0.r,
                offset: Offset(0, 2),
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 96.w,
                height: 98.h,
                child: Image.asset(
                  restaurants!.imageRes,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 17.h),
              Text(
                restaurants!.nameRes,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                restaurants!.minuteRes,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black38,
                ),
              ),
            ],
          ),
        );
  }
}