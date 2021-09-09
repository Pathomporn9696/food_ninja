import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/model/image_detailsmenu_model.dart';


class OrderDetailsTemplate extends StatelessWidget {
  const OrderDetailsTemplate({Key? key,this.detailMenu}) : super(key: key);

  final DetailMenu? detailMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 11.w),
            height: 103,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6.0.r,
                  offset: Offset(0, 2),
                )
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 62.w,
                  height: 62.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Image.asset(detailMenu!.foodimage),
                ),
                Container(
                  height: 62.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Spacy fresh crab',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        'Waroenk kita',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black38,
                        ),
                      ),
                      SizedBox(height: 1.h),
                      Text(
                        '฿ 35',
                        style: TextStyle(
                          fontSize: 19.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.greenAccent,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 92.w,
                  height: 26.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 26.w,
                        height: 26.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: Color(0xff53E88B).withOpacity(0.2),
                        ),
                        child: Icon(
                          Icons.remove,
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        '1',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        width: 26.w,
                        height: 26.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xff53E88B),
                              Color(0xff15BE77),
                            ],
                          ),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}