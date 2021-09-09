import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:food_ninja/utility/my_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_ninja/main.dart';
import 'package:google_sign_in/google_sign_in.dart';

class MyLoginPage extends StatefulWidget {
  MyLoginPage({Key? key}) : super(key: key);

  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  FacebookLogin _facebookLogin = FacebookLogin();

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
                  'Login To Your Account',
                  style: GoogleFonts.viga(
                    textStyle: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
                buildEmail(),
                SizedBox(height: 20.h),
                buildPassword(),
                SizedBox(height: 25.h),
                Text(
                  'Or Continue With',
                  style: GoogleFonts.viga(
                    textStyle:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 25.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildFacebookLogin(),
                    buildGoogleLogin(),
                  ],
                ),
                SizedBox(height: 5.h),
                buildNewRegis(context),
                buildForgotPassbtn(context),
                SizedBox(height: 20.h),
                buildLogin(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<Null> signInWithGoogle() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [],
    );
    _googleSignIn.signIn().then((value) => Navigator.pushNamed(context, '/homePage'));
  }

  Future _loginFace() async {
    FacebookLoginResult _result = await _facebookLogin.logIn([]);
    switch (_result.status) {
      case FacebookLoginStatus.cancelledByUser:
        print('cancelledByUser');
        break;
      case FacebookLoginStatus.error:
        print('eror');
        break;
      case FacebookLoginStatus.loggedIn:
        await Navigator.pushNamed(context, '/homePage');
    }
  }

  Widget buildFacebookLogin() {
    return GestureDetector(
      onTap: () async {
        await _loginFace();
      },
      child: Container(
        height: 57.h,
        width: 152.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6.0.r,
              offset: Offset(0, 2),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/images/facebook.png',
              scale: 3,
            ),
            Text(
              'Facebook',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildGoogleLogin() {
    return GestureDetector(
      onTap: () async {
        signInWithGoogle();
      },
      child: Container(
        height: 57.h,
        width: 152.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6.0.r,
              offset: Offset(0, 2),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/images/google.png',
              scale: 3,
            ),
            Text(
              'Google',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildNewRegis(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    child: TextButton(
      child: Text(
        'New Register',
        style: TextStyle(fontSize: 12.sp, color: Colors.greenAccent),
      ),
      onPressed: () => Navigator.pushNamed(context, '/signup'),
    ),
  );
}

Widget buildForgotPassbtn(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    child: TextButton(
      child: Text(
        'Forgot Your Password?',
        style: TextStyle(fontSize: 12.sp, color: Colors.greenAccent),
      ),
      onPressed: () => Navigator.pushNamed(context, '/verifyCode'),
    ),
  );
}

Widget buildLogin(BuildContext context) {
  return GestureDetector(
    onTap: ()=>Navigator.pushNamedAndRemoveUntil(context, '/mainScreen', (route) => false),
    child: Container(
      height: 57.h,
      width: 147.w,
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
          'Login',
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
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(left: 14.w),
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
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(left: 14.w),
        hintText: 'Password',
        hintStyle: TextStyle(fontSize: 14, color: Colors.black38),
      ),
    ),
  );
}
