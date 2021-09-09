import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserChatPage extends StatelessWidget {
  const UserChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/pattern.png'),
                fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 35.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildIconBack(context),
                SizedBox(height: 19.h),
                Text(
                  'Chat',
                  style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.h),
                buildStatusUser(context),
                SizedBox(height: 40.h),
                buildListMessenger(),
                SizedBox(height: 100.h),
                sendMessenger(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container sendMessenger() {
    return Container(
      padding: EdgeInsets.all(25.r),
      width: double.infinity,
      height: 74.h,
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
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration.collapsed(
                    hintText: "Okay I'm waiting  👍",
                    hintStyle: TextStyle(fontSize: 14.sp)),
              ),
            ),
          ),
          Container(
            width: 24.w,
            height: 24.h,
            child: Image.asset('assets/images/send.png'),
          )
        ],
      ),
    );
  }

  Container buildListMessenger() {
    return Container(
      width: double.infinity,
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 129.w,
            height: 41.h,
            decoration: BoxDecoration(
              color: Color(0xffF6F6F6),
              borderRadius: BorderRadius.circular(13.r),
            ),
            child: Center(
              child: Text(
                'Just to order',
                style: TextStyle(fontSize: 14.sp, color: Colors.black54),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 1),
              Container(
                width: 265.w,
                height: 41.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xff53E88B), Color(0xff15BE77)]),
                  borderRadius: BorderRadius.circular(13.r),
                ),
                child: Center(
                  child: Text(
                    'Okay, for what level of spiciness?',
                    style: TextStyle(fontSize: 14, color: Colors.white70),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Container(
            width: 185.w,
            height: 41.h,
            decoration: BoxDecoration(
              color: Color(0xffF6F6F6),
              borderRadius: BorderRadius.circular(13.r),
            ),
            child: Center(
              child: Text(
                'Okay, wait a minute 👍',
                style: TextStyle(fontSize: 14.sp, color: Colors.black54),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 1),
              Container(
                width: 175.w,
                height: 41.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xff53E88B), Color(0xff15BE77)]),
                  borderRadius: BorderRadius.circular(13.r),
                ),
                child: Center(
                  child: Text(
                    "Okay I'm waiting  👍",
                    style: TextStyle(fontSize: 14, color: Colors.white70),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container buildStatusUser(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10.h,
        horizontal: 10.w,
      ),
      height: 93.h,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 6.0.r,
          offset: Offset(0, 2),
        ),
      ], borderRadius: BorderRadius.circular(22.r), color: Color(0xffFFFFFF)),
      child: Row(
        children: [
          Container(
            width: 62.w,
            height: 62.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Image.asset(
              ('assets/images/user1.png'),
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 17.w, right: 18.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dianne Russell',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Row(
                          children: [
                            Container(
                              width: 6.w,
                              height: 6.w,
                              decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(width: 4.w),
                            Text(
                              'Online',
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.black38,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: ()=>Navigator.pushNamed(context, '/callPage'),
                    child: Container(
                      width: 40.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.greenAccent.withOpacity(0.2),
                      ),
                      child: Image.asset(
                        'assets/images/call.png',
                        scale: 3.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildIconBack(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5.w),
      height: 45.h,
      width: 45.w,
      decoration: BoxDecoration(
        color: Color(0xffF9A84D).withOpacity(0.2),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: IconButton(
        padding: EdgeInsets.only(right: 5.w),
        icon: Icon(Icons.chevron_left),
        iconSize: 40,
        color: Color(0xffDA6317),
        onPressed: ()=>Navigator.pop(context),
      ),
    );
  }
}
