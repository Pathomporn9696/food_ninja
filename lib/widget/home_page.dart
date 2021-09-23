import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/model/menu_model.dart';
import 'package:food_ninja/model/restaurant_model.dart';
import 'package:food_ninja/templete/build_bottomnavbar.dart';
import 'package:food_ninja/templete/templete_menu.dart';
import 'package:food_ninja/templete/templete_res.dart';
import 'package:food_ninja/utility/my_style.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  double gap = 10;
  // int badge = 0;
  final padding = EdgeInsets.symmetric(horizontal: 18.w, vertical: 6.h);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity.w,
          height: double.infinity.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/pattern.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 25.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60.h),
                buildTitle(),
                SizedBox(height: 19.h),
                MyStyle().buildSearchBar(context),
                SizedBox(height: 20.h),
                buildPromo(),
                SizedBox(height: 5.h),
                buildTitleRestaurant(),
                buildRestauranScrollView(),
                SizedBox(height: 5.h),
                buildTitleMenu(),
                SizedBox(height: 5.h),
                buildMenuScrollView(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SingleChildScrollView buildMenuScrollView() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Column(
          children: List.generate(Menu.menus.length, (index) {
            final menu = Menu.menus[index];
            return TemMenu(
              menus: menu,
            );
          }),
        ),
      ),
    );
  }

  SingleChildScrollView buildRestauranScrollView() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: Row(
            children: List.generate(Restaurant.restaurents.length, (index) {
          final restaurent = Restaurant.restaurents[index];
          return Container(
            margin: EdgeInsets.only(right: 20.w),
            child: TempleteRes(
              restaurants: restaurent,
            ),
          );
        })),
      ),
    );
  }

  Row buildTitleRestaurant() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Nearest Restaurant',
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: () => Navigator.pushNamed(context, '/exploreRes'),
          child: Text(
            'View More',
            style: TextStyle(
              fontSize: 12.sp,
              color: Color(0xffFF7C32),
            ),
          ),
        ),
      ],
    );
  }

  Row buildTitleMenu() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Popular Menu',
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: () => Navigator.pushNamed(context, '/exploreMenu'),
          child: Text(
            'View More',
            style: TextStyle(
              fontSize: 12.sp,
              color: Color(0xffFF7C32),
            ),
          ),
        ),
      ],
    );
  }

  Container buildPromo() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0.r),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [Color(0xff53E88B), Color(0xff15BE77)],
        ),
        image: DecorationImage(
          image: AssetImage('assets/images/bgcard.png'),
          fit: BoxFit.cover,
        ),
      ),
      height: 150.h,
      child: Row(
        children: [
          Container(
            width: 175.w,
          ),
          Container(
            width: 140.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Special Deal For\nOctober',
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20.h),
                GestureDetector(
                  onTap: ()=>Navigator.pushNamed(context, '/vouncherPage'),
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
                    width: 82.w,
                    height: 32.h,
                    child: Center(
                      child: Text(
                        'Buy Now',
                        style: TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
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
        GestureDetector(
          onTap: ()=>Navigator.pushNamed(context, '/notificationPage'),
          child: Container(
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
        ),
      ],
    );
  }
}
