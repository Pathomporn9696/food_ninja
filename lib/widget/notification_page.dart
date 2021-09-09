import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationPage extends StatefulWidget {
  NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 38.h),
                backIcon(context),
                SizedBox(height: 20.h),
                Container(
                  margin: EdgeInsets.only(left: 11.w),
                  child: Text(
                    'Notification',
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                checked(),
                SizedBox(height: 20.h),
                money(),
                SizedBox(height: 20.h),
                xbtn(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container checked() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
        vertical: 23.h,
      ),
      height: 105.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6.0.r,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 58.w,
            height: 58.h,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  bottom: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff32BA7C),
                      shape: BoxShape.circle,
                    ),
                    width: 11.w,
                    height: 11.w,
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 6,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff32BA7C),
                      shape: BoxShape.circle,
                    ),
                    width: 5.w,
                    height: 5.w,
                  ),
                ),
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff32BA7C),
                      shape: BoxShape.circle,
                    ),
                    width: 3.w,
                    height: 3.w,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff32BA7C),
                      shape: BoxShape.circle,
                    ),
                    width: 3.w,
                    height: 3.w,
                  ),
                ),
                Center(
                  child: Container(
                    width: 40.w,
                    height: 40.h,
                    child: Image.asset('assets/images/checked.png'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your order has been taken by\nthe driver',
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                'Recently',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.black38,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Container money() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
      ),
      height: 85.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6.0.r,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 58.w,
            height: 58.h,
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  top: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffFFE14D),
                      shape: BoxShape.circle,
                    ),
                    width: 8.w,
                    height: 8.w,
                  ),
                ),
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffFFE14D),
                      shape: BoxShape.circle,
                    ),
                    width: 6.w,
                    height: 6.w,
                  ),
                ),
                Positioned(
                  left: 7,
                  bottom: 7,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffFFE14D),
                      shape: BoxShape.circle,
                    ),
                    width: 5.w,
                    height: 5.w,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffFFE14D),
                      shape: BoxShape.circle,
                    ),
                    width: 10.w,
                    height: 10.w,
                  ),
                ),
                Center(
                  child: Container(
                    width: 40.w,
                    height: 40.h,
                    child: Image.asset('assets/images/money.png'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Text(
                'Topup for  ฿100 was successful',
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                '10.00 Am',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.black38,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Container xbtn() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
      ),
      height: 85.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6.0.r,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 58.w,
            height: 58.h,
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  top: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffE21B1B),
                      shape: BoxShape.circle,
                    ),
                    width: 6.w,
                    height: 6.w,
                  ),
                ),
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffE21B1B),
                      shape: BoxShape.circle,
                    ),
                    width: 4.w,
                    height: 4.w,
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffE21B1B),
                      shape: BoxShape.circle,
                    ),
                    width: 11.w,
                    height: 11.w,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffE21B1B),
                      shape: BoxShape.circle,
                    ),
                    width: 4.w,
                    height: 4.w,
                  ),
                ),
                Center(
                  child: Container(
                    width: 40.w,
                    height: 40.h,
                    child: Image.asset('assets/images/xbtn.png'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Text(
                'Your order has been canceled',
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                '22 Juny 2021',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.black38,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  GestureDetector backIcon(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        margin: EdgeInsets.only(left: 11.w),
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
