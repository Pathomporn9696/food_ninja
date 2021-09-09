import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/utility/my_style.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool statusGreenEye = true;
  bool _isSelected = false;
  bool _isSelected2 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
              horizontal: 25.w,
            ),
            child: Column(
              children: [
                MyStyle().buildLogo(),
                SizedBox(height: 40.h),
                Text(
                  'Sign Up For Free ',
                  style: GoogleFonts.viga(
                    textStyle: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
                buildIdname(),
                SizedBox(height: 20.h),
                buildEmail(),
                SizedBox(height: 20.h),
                buillPassword(),
                SizedBox(height: 30.h),
                buildCheck1(),
                SizedBox(height: 15.h),
                buildCheck2(),
                SizedBox(height: 20.h),
                buildSignup(context),
                buildAlreadyAccountbtn(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector buildSignup(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/signupProcess'),
      child: Container(
        height: 57.h,
        width: 175.w,
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
            'Create Account',
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
    );
  }

  Row buildCheck2() {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isSelected2 = !_isSelected2;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: _isSelected2 ? Colors.greenAccent : Colors.grey,
              borderRadius: BorderRadius.circular(20.r),
            ),
            width: 25.w,
            height: 25.h,
            child: Icon(
              Icons.check,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Text(
          'Email Me About Special Pricing',
          style: TextStyle(
            fontSize: 12,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }

  Row buildCheck1() {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isSelected = !_isSelected;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: _isSelected ? Colors.greenAccent : Colors.grey,
              borderRadius: BorderRadius.circular(20.r),
            ),
            width: 25.w,
            height: 25.h,
            child: Icon(
              Icons.check,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Text(
          'Keep Me Signed In',
          style: TextStyle(
            fontSize: 12,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }

  Container buillPassword() {
    return Container(
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
          prefixIcon: Image.asset(
            'assets/images/password.png',
            scale: 3,
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 13.h),
          hintText: 'Password',
          hintStyle: TextStyle(fontSize: 14, color: Colors.black38),
        ),
      ),
    );
  }
}

Widget buildAlreadyAccountbtn(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    child: TextButton(
      child: Text(
        'already have an account?',
        style: TextStyle(fontSize: 12.sp, color: Colors.greenAccent),
      ),
      onPressed: () => Navigator.pushNamedAndRemoveUntil(
          context, '/signin', (route) => false),
    ),
  );
}

Widget buildIdname() {
  return Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6.0.r,
            offset: Offset(0, 2),
          )
        ]),
    height: 50.h,
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        color: Colors.black87,
      ),
      decoration: InputDecoration(
        prefixIcon: Image.asset(
          'assets/images/user.png',
          scale: 3,
        ),
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(top: 13.h),
        hintText: 'Anamwp . . |',
        hintStyle: TextStyle(fontSize: 14, color: Colors.black38),
      ),
    ),
  );
}

Widget buildEmail() {
  return Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6.0.r,
            offset: Offset(0, 2),
          )
        ]),
    height: 50.h,
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        color: Colors.black87,
      ),
      decoration: InputDecoration(
        prefixIcon: Image.asset(
          'assets/images/email.png',
          scale: 3,
        ),
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(top: 13.h),
        hintText: 'Email',
        hintStyle: TextStyle(fontSize: 14, color: Colors.black38),
      ),
    ),
  );
}

Widget buildPassword() {
  return Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0.r),
        boxShadow: [
          BoxShadow(
              color: Colors.black26, blurRadius: 6.0.r, offset: Offset(0, 2))
        ]),
    height: 50.h,
    child: TextField(
      obscureText: true,
      style: TextStyle(
        color: Colors.black87,
      ),
      decoration: InputDecoration(
        prefixIcon: Image.asset(
          'assets/images/password.png',
          scale: 3,
        ),
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(top: 13.h),
        hintText: 'Password',
        hintStyle: TextStyle(fontSize: 14, color: Colors.black38),
      ),
    ),
  );
}
