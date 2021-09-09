import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/model/restaurant_model.dart';
import 'package:food_ninja/templete/build_bottomnavbar.dart';
import 'package:food_ninja/templete/templete_res.dart';
import 'package:food_ninja/utility/my_style.dart';
import 'package:food_ninja/widget/home_page.dart';

class ExploreResPage extends StatefulWidget {
  ExploreResPage({Key? key}) : super(key: key);

  @override
  _ExploreResPageState createState() => _ExploreResPageState();
}

class _ExploreResPageState extends State<ExploreResPage> {
  int selectedIndex = 0;
  double gap = 10;
  // int badge = 0;
  final padding = EdgeInsets.symmetric(horizontal: 18.w, vertical: 6.h);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBody: true,
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
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60.h),
                MyStyle().buildTitle(),
                SizedBox(height: 19.h),
                MyStyle().buildSearchBar(context),
                SizedBox(height: 20.h),
                Text(
                  'Popular Restaurant',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.h),
                buildPopularRes(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BuildBottomNavbar(
          gap: gap,
          padding: padding,
          selectedIndex: selectedIndex,
        ),
      ),
    );
  }

  Container buildPopularRes() {
    return Container(
      height: 1000,
      child: Center(
        child: GridView.count(
          childAspectRatio: 0.8,
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          children: List.generate(Restaurant.restaurents.length, (index) {
            final restaurent = Restaurant.restaurents[index];
            return Container(
              width: 147.w,
              height: 184.h,
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: TempleteRes(
                restaurants: restaurent,
              ),
            );
          }),
        ),
      ),
    );
  }
}
