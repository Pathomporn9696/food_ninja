import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/model/user_model.dart';

class TempleteUser extends StatelessWidget {
  const TempleteUser({Key? key,this.users}) : super(key: key);
  
  final User? users;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.pushNamed(context, '/userChatPage'),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 10.h,
          horizontal: 10.w,
        ),
        height: 81.h,
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
                users!.imageuser,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 17.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          users!.nameuser,
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          users!.time,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black38,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      users!.titleuser,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black38,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
