import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ViaPage extends StatefulWidget {
  ViaPage({Key? key}) : super(key: key);

  @override
  _ViaPageState createState() => _ViaPageState();
}

class _ViaPageState extends State<ViaPage> {
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
                  'Forgot password?',
                  style:
                      TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 19.h),
                Text(
                  'Select which contact details should we\nuse to reset your password',
                  style: TextStyle(fontSize: 12.sp, color: Colors.black54),
                ),
                SizedBox(height: 19.h),
                buildViaSms(),
                SizedBox(height: 20.h),
                buildViaEmail(),
                SizedBox(height: 220.h),
                buildNext(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildViaSms() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 23.w),
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
      height: 105.h,
      child: Row(
        children: [
          Image.asset(
            'assets/images/message.png',
            scale: 3.w,
          ),
          SizedBox(width: 16.w),
          Container(
            height: 60.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Via sms:',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Color(0xff828282),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '•••• •••• ',
                      style: TextStyle(
                          fontSize: 30.sp,
                          color: Color(0xff09051C),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '4235',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Color(0xff09051C),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container buildViaEmail() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 23.w),
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
      height: 105.h,
      child: Row(
        children: [
          Image.asset(
            'assets/images/email2.png',
            scale: 3.w,
          ),
          SizedBox(width: 16.w),
          Container(
            height: 60.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Via email:',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Color(0xff828282),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '•••• ',
                      style: TextStyle(
                          fontSize: 30.sp,
                          color: Color(0xff09051C),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '@gmail.com',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Color(0xff09051C),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  GestureDetector buildBack(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/verifyCode'),
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
      onTap: () => Navigator.pushNamed(context, '/resetPassword'),
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
                  fontSize: 16.sp,
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
