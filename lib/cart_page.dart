import 'package:flutter/material.dart';
import 'package:food_ninja/utility/my_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Column(
                  children: [
                    MyStyle().buildLogo(),
                    SizedBox(height: 40.h),
                    OrderDetailsPage(context),
                  ],
                ),
              ),
            )),
      ),
    );
  }

  GestureDetector OrderDetailsPage(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/OrderDetails'),
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
            'Order Details',
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
