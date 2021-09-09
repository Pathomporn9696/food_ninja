import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/model/menu_model.dart';
import 'package:food_ninja/templete/build_bottomnavbar.dart';
import 'package:food_ninja/templete/templete_menu.dart';
import 'package:food_ninja/utility/my_style.dart';

class ExploreMenuPage extends StatefulWidget {
  ExploreMenuPage({Key? key}) : super(key: key);

  @override
  _ExploreMenuPageState createState() => _ExploreMenuPageState();
}

class _ExploreMenuPageState extends State<ExploreMenuPage> {
  int selectedIndex = 0;
  double gap = 10;
  final padding = EdgeInsets.symmetric(horizontal: 18.w, vertical: 6.h);
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
                  'Popular Menu',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.sp,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20.h),
                SingleChildScrollView(
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
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BuildBottomNavbar(gap: gap,padding: padding,selectedIndex: selectedIndex,)
      ),
    );
  }
}
