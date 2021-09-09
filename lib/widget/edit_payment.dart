import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditPayment extends StatefulWidget {
  EditPayment({Key? key}) : super(key: key);

  @override
  _EditPaymentState createState() => _EditPaymentState();
}

class _EditPaymentState extends State<EditPayment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage('assets/images/pattern.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              backicon_title(context),
              SizedBox(height: 20.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                width: double.infinity,
                height: 73.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6.0.r,
                        offset: Offset(0, 2),
                      ),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 86.w,
                      height: 23.h,
                      child: Image.asset('assets/images/paypal.png'),
                    ),
                    Text(
                      '2121 6352 8465 ****',
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                width: double.infinity,
                height: 73.h,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(22.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 60.w,
                      height: 60.h,
                      child: Image.asset('assets/images/visa.png',fit: BoxFit.fill,),
                    ),
                    Text(
                      '2121 6352 8465 ****',
                      style: TextStyle(
                        color: Colors.black26,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                width: double.infinity,
                height: 73.h,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(22.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 83.w,
                      height: 32.h,
                      child: Image.asset('assets/images/payoneer.png',fit: BoxFit.fill,),
                    ),
                    Text(
                      '2121 6352 8465 ****',
                      style: TextStyle(
                        color: Colors.black26,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container backicon_title(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5.w, top: 38.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          backIcon(context),
          SizedBox(height: 19.h),
          Text(
            'Payment',
            style: TextStyle(
              fontSize: 25.sp,
              fontWeight: FontWeight.bold,
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
