import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/router.dart';
import 'package:food_ninja/utility/my_style.dart';

class RePassword extends StatefulWidget {
  RePassword({Key? key}) : super(key: key);

  @override
  _RePasswordState createState() => _RePasswordState();
}

class _RePasswordState extends State<RePassword> {
  bool statusGreenEye = true;
  bool statusGreenEye2 = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFEFEFF),
        body: Container(
          width: double.infinity.w,
          height: double.infinity.h,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/pattern.png'),
                fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              vertical: 40.h,
              horizontal: 25.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyStyle().buildBack(context, '/vaiPage'),
                SizedBox(height: 20.h),
                Text(
                  'Reset your password\nhere',
                  style:
                      TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 19.h),
                Text(
                  'Select which contact details should we\nuse to reset your password',
                  style: TextStyle(fontSize: 12.sp, color: Colors.black54),
                ),
                SizedBox(height: 40.h),
                buildNewPassword(),
                SizedBox(height: 20.h),
                buildConPassword(),
                SizedBox(height: 280.h),
                MyStyle().buildNext(context, '/resetSuccess')
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildNewPassword() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0.r),
        boxShadow: [
          BoxShadow(
              color: Colors.black26, blurRadius: 6.0.r, offset: Offset(0, 2))
        ],
      ),
      height: 50.h,
      child: TextField(
        obscureText: statusGreenEye,
        style: TextStyle(
          color: Colors.black87,
        ),
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: statusGreenEye
                ? Icon(
                    Icons.remove_red_eye_sharp,
                    color: Colors.grey,
                  )
                : Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.greenAccent,
                  ),
            onPressed: () {
              setState(() {
                statusGreenEye = !statusGreenEye;
              });
            },
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 13.h),
          hintText: 'New Password',
          hintStyle: TextStyle(fontSize: 14, color: Colors.black38),
        ),
      ),
    );
  }
  Container buildConPassword() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0.r),
        boxShadow: [
          BoxShadow(
              color: Colors.black26, blurRadius: 6.0.r, offset: Offset(0, 2))
        ],
      ),
      height: 50.h,
      child: TextField(
        obscureText: statusGreenEye2,
        style: TextStyle(
          color: Colors.black87,
        ),
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: statusGreenEye2
                ? Icon(
                    Icons.remove_red_eye_sharp,
                    color: Colors.grey,
                  )
                : Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.greenAccent,
                  ),
            onPressed: () {
              setState(() {
                statusGreenEye2 = !statusGreenEye2;
              });
            },
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 13.h),
          hintText: 'Confirm Password',
          hintStyle: TextStyle(fontSize: 14, color: Colors.black38),
        ),
      ),
    );
  }
}
