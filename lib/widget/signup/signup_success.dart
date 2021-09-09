import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignSuccess extends StatelessWidget {
  const SignSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFEFEFF),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 31.w),
          width: double.infinity.w,
          height: double.infinity.h,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/pattern.png'),
                fit: BoxFit.cover),
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 210.h,),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 162.w,
                        child: Image.asset(
                          'assets/images/success.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 33.h,
                      ),
                      Text(
                        'Congrats!',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff53E88B)),
                      ),
                      SizedBox(height: 23.h),
                      Text(
                        'Your Profile Is Ready To Use!',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff09051C),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 160.h),
                buildTryOrder(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector buildTryOrder(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/signin'),
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
              'Try Order',
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
