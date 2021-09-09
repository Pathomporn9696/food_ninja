import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyStyle {
  Widget showLogo() {
    return Image(
      width: 200,
      height: 150,
      image: AssetImage(
        'assets/images/logo.png',
      ),
    );
  }

  Row buildTitle() {
    return Row(
      children: [
        SizedBox(width: 6.w),
        Text(
          'Find Your\nFavorite Food',
          style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 80.w),
        Container(
          width: 45.w,
          height: 45.h,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/notification.png'), scale: 3),
            borderRadius: BorderRadius.circular(18.r),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6.0.r,
                offset: Offset(0, 2),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget buildLogo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyStyle().showLogo(),
        Text(
          'FoodNinja',
          style: GoogleFonts.viga(
              textStyle: TextStyle(fontSize: 40), color: Colors.greenAccent),
        ),
        Text(
          'Deliever Favorite Food',
          style: GoogleFonts.inter(
              textStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
        )
      ],
    );
  }

  GestureDetector buildBack(BuildContext context, router) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, router),
      child: Container(
        width: 45.w,
        height: 45.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Color(
              0x40f9a84d,
            )),
        child: Icon(
          Icons.chevron_left_outlined,
          size: 30.w,
          color: Color(0xFFDA6317),
        ),
      ),
    );
  }

  GestureDetector buildNext(BuildContext context, router) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, router),
      child: Center(
        child: Container(
          height: 57.h,
          width: 157.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0.r),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.greenAccent, Colors.green],
            ),
          ),
          child: Center(
            child: Text(
              'Next',
              style: GoogleFonts.viga(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row buildSearchBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildSearch(),
        buildFilter(context),
      ],
    );
  }

  Container buildSearch() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF9A84D).withOpacity(.1),
        borderRadius: BorderRadius.circular(10.0.r),
      ),
      width: 267.w,
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

  GestureDetector buildFilter(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/filter'),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/filter.png'), scale: 3),
          color: Color(0xffF9A84D).withOpacity(.1),
          borderRadius: BorderRadius.circular(18.0.r),
        ),
        width: 50.h,
        height: 50.h,
      ),
    );
  }
}
