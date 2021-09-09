import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyCodePage extends StatefulWidget {
  VerifyCodePage({Key? key}) : super(key: key);

  @override
  _VerifyCodePageState createState() => _VerifyCodePageState();
}

class _VerifyCodePageState extends State<VerifyCodePage> {
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
                  'Enter 4-digit\nVerification code',
                  style:
                      TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 19.h),
                Text(
                  'Code send to +6282045**** . This code will\nexpired in 01:30',
                  style: TextStyle(fontSize: 12.sp, color: Colors.black54),
                ),
                SizedBox(height: 38.h),
                buildCodebox(),
                SizedBox(height: 300.h),
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
      onTap: () => Navigator.pushNamed(context, '/signin'),
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

  Container buildCodebox() {
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
      height: 100.h,
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: TextStyle(
          wordSpacing: 40.w,
          fontSize: 33.sp,
          color: Colors.black87,
          fontWeight: FontWeight.bold
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 13.w),
          
        ),
      ),
    );
  }

  GestureDetector buildNext(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/vaiPage'),
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
}
