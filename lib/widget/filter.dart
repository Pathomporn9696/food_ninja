import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/utility/my_style.dart';

class Filter extends StatelessWidget {
  const Filter({Key? key}) : super(key: key);

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
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60.h),
                MyStyle().buildTitle(),
                SizedBox(height: 19.h),
                buildSearchFilter(),
                SizedBox(height: 20.h),
                buildType(),
                SizedBox(height: 20.h),
                buildLocation(),
                SizedBox(height: 20.h),
                buildFood(),
                SizedBox(height: 100.h),
                buildSearch(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector buildSearch(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.pop(context),
      child: Container(
        width: double.infinity,
        height: 57.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xff53E88B),
              Color(0xff15BE77),
            ],
          ),
        ),
        child: Center(
          child: Text(
            'Search',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Container buildType() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Type',
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              Container(
                width: 108.w,
                height: 44.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Color(0xffFEAD1D).withOpacity(.1),
                ),
                child: Center(
                  child: Text(
                    'Restaurant',
                    style: TextStyle(
                      color: Color(0xffDA6317),
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20.w),
              Container(
                width: 74.w,
                height: 44.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Color(0xffFEAD1D).withOpacity(.1),
                ),
                child: Center(
                  child: Text(
                    'Menu',
                    style: TextStyle(
                      color: Color(0xffDA6317),
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container buildLocation() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Location',
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              Container(
                width: 70.w,
                height: 44.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Color(0xffFEAD1D).withOpacity(.1),
                ),
                child: Center(
                  child: Text(
                    '1 Km',
                    style: TextStyle(
                      color: Color(0xffDA6317),
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Container(
                width: 86.w,
                height: 44.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Color(0xffFEAD1D).withOpacity(.1),
                ),
                child: Center(
                  child: Text(
                    '>10 Km',
                    style: TextStyle(
                      color: Color(0xffDA6317),
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Container(
                width: 86.w,
                height: 44.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Color(0xffFEAD1D).withOpacity(.1),
                ),
                child: Center(
                  child: Text(
                    '<10 Km',
                    style: TextStyle(
                      color: Color(0xffDA6317),
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container buildFood() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Food',
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              Container(
                width: 70.w,
                height: 44.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Color(0xffFEAD1D).withOpacity(.1),
                ),
                child: Center(
                  child: Text(
                    'Cake',
                    style: TextStyle(
                      color: Color(0xffDA6317),
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Container(
                width: 71.w,
                height: 44.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Color(0xffFEAD1D).withOpacity(.1),
                ),
                child: Center(
                  child: Text(
                    'Soup',
                    style: TextStyle(
                      color: Color(0xffDA6317),
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Container(
                width: 120.w,
                height: 44.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Color(0xffFEAD1D).withOpacity(.1),
                ),
                child: Center(
                  child: Text(
                    'Main Course',
                    style: TextStyle(
                      color: Color(0xffDA6317),
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              Container(
                width: 99.w,
                height: 44.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Color(0xffFEAD1D).withOpacity(.1),
                ),
                child: Center(
                  child: Text(
                    'Appetizer',
                    style: TextStyle(
                      color: Color(0xffDA6317),
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20.w),
              Container(
                width: 87.w,
                height: 44.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Color(0xffFEAD1D).withOpacity(.1),
                ),
                child: Center(
                  child: Text(
                    'Dessert',
                    style: TextStyle(
                      color: Color(0xffDA6317),
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container buildSearchFilter() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF9A84D).withOpacity(.1),
        borderRadius: BorderRadius.circular(10.0.r),
      ),
      width: double.infinity,
      height: 50.h,
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Colors.black87,
        ),
        decoration: InputDecoration(
          prefixIcon: Image.asset(
            'assets/images/search.png',
            alignment: Alignment(0.1.w, 0.3.h),
            scale: 3.w,
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 16.h),
          hintText: 'What do you want to order?',
          hintStyle: TextStyle(fontSize: 14, color: Color(0xffDA6317)),
        ),
      ),
    );
  }
}
