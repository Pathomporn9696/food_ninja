import 'package:flutter/material.dart';
import 'package:food_ninja/utility/my_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage('assets/images/pattern.png'),
                fit: BoxFit.cover),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              children: [
                MyStyle().buildLogo(),
                SizedBox(height: 50),
                voucherPage(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector voucherPage(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/vouncherPage'),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.r),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6.0.r,
                offset: Offset(0, 2),
              )
            ]),
        width: double.infinity.w,
        height: 50.h,
        child: Center(
          child: Text(
            'Voucher Promo',
            style: TextStyle(
                color: Colors.greenAccent,
                fontSize: 25.sp,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
