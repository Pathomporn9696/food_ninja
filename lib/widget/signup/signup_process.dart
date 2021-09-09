import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/utility/my_style.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpProcess extends StatefulWidget {
  SignUpProcess({Key? key}) : super(key: key);

  @override
  _SignUpProcessState createState() => _SignUpProcessState();
}

class _SignUpProcessState extends State<SignUpProcess> {
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
                buildBack(context),
                SizedBox(height: 20.h),
                Text(
                  'Fill in your bio to get\nstarted',
                  style:
                      TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 19.h),
                Text(
                  'This data will be displayed in your\naccount profile for security',
                  style: TextStyle(fontSize: 12.sp, color: Colors.black54),
                ),
                SizedBox(height: 20.h),
                buildFname(),
                SizedBox(height: 20.h),
                buildLname(),
                SizedBox(height: 20.h),
                buildPhone(),
                SizedBox(height: 190.h),
                buildNext(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector buildBack(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/signup'),
      child: Container(
        width: 45.w,
        height: 45.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Color(
              0x40f9a84d,
            )),
        child: Icon(
          Icons.chevron_left_outlined,
          size: 30.w,
          color: Color(0xFFDA6317),
        ),
      ),
    );
  }

  GestureDetector buildNext(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/payment'),
      child: Center(
        child: Container(
          height: 57.h,
          width: 157.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0.r),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.greenAccent, Colors.green],
            ),
          ),
          child: Center(
            child: Text(
              'Next',
              style: GoogleFonts.viga(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container buildFname() {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(20.0.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6.0.r,
            offset: Offset(0, 2),
          )
        ],
      ),
      height: 60.h,
      child: TextField(
        keyboardType: TextInputType.name,
        style: TextStyle(
          color: Colors.black87,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 13.w),
          hintText: 'First Name',
          hintStyle: TextStyle(fontSize: 14, color: Colors.black38),
        ),
      ),
    );
  }

  Container buildLname() {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(20.0.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6.0.r,
            offset: Offset(0, 2),
          )
        ],
      ),
      height: 60.h,
      child: TextField(
        keyboardType: TextInputType.name,
        style: TextStyle(
          color: Colors.black87,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 13.w),
          hintText: 'Last Name',
          hintStyle: TextStyle(fontSize: 14, color: Colors.black38),
        ),
      ),
    );
  }

  Container buildPhone() {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(20.0.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6.0.r,
            offset: Offset(0, 2),
          )
        ],
      ),
      height: 60.h,
      child: TextField(
        keyboardType: TextInputType.phone,
        style: TextStyle(
          color: Colors.black87,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 13.w),
          hintText: 'Mobile Number',
          hintStyle: TextStyle(fontSize: 14, color: Colors.black38),
        ),
      ),
    );
  }
}
