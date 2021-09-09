import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VoucherPage extends StatefulWidget {
  VoucherPage({Key? key}) : super(key: key);

  @override
  _VoucherPageState createState() => _VoucherPageState();
}

class _VoucherPageState extends State<VoucherPage> {
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
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 38.h),
                backIcon(context),
                SizedBox(height: 20.h),
                Text(
                  'Voucher Promo',
                  style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20.h),
                promotion1(),
                SizedBox(height: 20.h),
                promotion2(),
                SizedBox(height: 240.h),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.greenAccent,
                        Colors.green,
                      ],
                    ),
                  ),
                  height: 56.h,
                  child: Center(
                    child: Text(
                      'check out',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container promotion1() {
    return Container(
      height: 122.h,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/voucherbg1.png'),
            fit: BoxFit.cover),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Row(
          children: [
            Container(
              width: 160.w,
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(height: 17.h),
                  Text(
                    'Special Deal For\nOctober',
                    style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 17.h),
                  Container(
                    height: 32.h,
                    width: 82.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6.0.r,
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Order Now',
                        style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container promotion2() {
    return Container(
      height: 122.h,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/voucherbg2.png'),
            fit: BoxFit.cover),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Row(
          children: [
            Container(
              width: 160.w,
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(height: 17.h),
                  Text(
                    'Special Deal For\nOctober',
                    style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff6B3A5B),
                    ),
                  ),
                  SizedBox(height: 17.h),
                  Container(
                    height: 32.h,
                    width: 82.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6.0.r,
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Order Now',
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff6B3A5B),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  GestureDetector backIcon(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        width: 45.w,
        height: 45.h,
        decoration: BoxDecoration(
          color: Color(0xffF9A84D).withOpacity(0.2),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Icon(
          Icons.chevron_left,
          color: Color(0xffDA6317),
          size: 35.w,
        ),
      ),
    );
  }
}
