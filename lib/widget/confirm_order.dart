import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmOrderPage extends StatefulWidget {
  ConfirmOrderPage({Key? key}) : super(key: key);

  @override
  _ConfirmOrderPageState createState() => _ConfirmOrderPageState();
}

class _ConfirmOrderPageState extends State<ConfirmOrderPage> {
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
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 18.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      backicon_texttitle(context),
                      SizedBox(height: 20.h),
                      editLocal(),
                      SizedBox(height: 20.h),
                      editPayment(),
                    ],
                  ),
                ),
                totalCard(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container editPayment() {
    return Container(
      width: double.infinity,
      height: 100.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6.0.r,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Payment Method',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black38,
                  ),
                ),
                TextButton(
                  child: Text(
                    'Edit',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.greenAccent,
                    ),
                  ),
                  onPressed: ()=>Navigator.pushNamed(context, '/EditPayment'),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 86.w,
                    height: 23.h,
                    child: Image.asset(
                      'assets/images/paypal.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    '2121 6352 8465 ****',
                    style: TextStyle(
                      fontSize: 14.sp,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container editLocal() {
    return Container(
      width: double.infinity,
      height: 108.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6.0.r,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Deliver To',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black38,
                  ),
                ),
                TextButton(
                  child: Text(
                    'Edit',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.greenAccent,
                    ),
                  ),
                  onPressed: ()=>Navigator.pushNamed(context, '/EditLocation'),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 33.w,
                  height: 33.h,
                  child: Image.asset(
                    'assets/images/iconlocation.png',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: 14.w,
                ),
                Text(
                  '4517 Washington Ave. Manchester,\nKentucky 39495',
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container backicon_texttitle(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 11.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          backIcon(context),
          SizedBox(height: 19.h),
          Text(
            'Confirm Order',
            style: TextStyle(
              fontSize: 25.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Container totalCard(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      width: double.infinity,
      height: 206.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.r),
        image: DecorationImage(
          image: AssetImage('assets/images/patterncard.png'),
          fit: BoxFit.cover,
        ),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color(0xff53E88B),
            Color(0xff15BE77),
          ],
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 20.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            width: 295.w,
            height: 95.h,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sub-Total',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '120 ฿',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery Charge',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '10 ฿',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Discount',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '20 ฿',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '150 ฿',
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 19.h),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/ConfirmOrder'),
            child: Container(
              width: 325.w,
              height: 57.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  15.r,
                ),
              ),
              child: Center(
                child: Text(
                  'Place My Order',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                    color: Colors.greenAccent,
                  ),
                ),
              ),
            ),
          )
        ],
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
