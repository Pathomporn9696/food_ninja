import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BuildBottomNavbar extends StatefulWidget {
  const BuildBottomNavbar({
    Key? key,
    required this.gap,
    required this.padding,
    required this.selectedIndex,
  }) : super(key: key);

  final double gap;
  final EdgeInsets padding;
  final int selectedIndex;

  @override
  _BuildBottomNavbarState createState() => _BuildBottomNavbarState();
}

class _BuildBottomNavbarState extends State<BuildBottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Container(
          height: 60.h,
          margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20.r)),
            boxShadow: [
              BoxShadow(
                spreadRadius: -10.r,
                blurRadius: 60.r,
                color: Colors.black.withOpacity(.4),
                offset: Offset(0, 25),
              )
            ],
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            child: GNav(
              tabs: [
                GButton(
                  borderRadius: BorderRadius.circular(10.r),
                  onPressed: () => Navigator.pushNamed(context, '/mainScreen'),
                  gap: widget.gap,
                  iconActiveColor: Colors.black,
                  iconColor: Colors.black,
                  textColor: Colors.black,
                  backgroundColor: Colors.greenAccent.withOpacity(.2),
                  iconSize: 24.w,
                  padding: widget.padding,
                  icon: Icons.search,
                  leading: Image.asset(
                    'assets/images/home.png',
                    scale: 3.w,
                  ),
                  text: 'Home',
                ),
                GButton(
                  onPressed: () => Navigator.pushNamed(context, '/chatList'),
                  borderRadius: BorderRadius.circular(10.r),
                  gap: widget.gap,
                  iconActiveColor: Colors.black,
                  iconColor: Colors.black,
                  textColor: Colors.black,
                  backgroundColor: Colors.greenAccent.withOpacity(.2),
                  iconSize: 24.w,
                  padding: widget.padding,
                  icon: Icons.search,
                  leading: Image.asset(
                    'assets/images/profile.png',
                    scale: 3,
                  ),
                  text: 'Profile',
                ),
                GButton(
                  borderRadius: BorderRadius.circular(10.r),
                  gap: widget.gap,
                  iconActiveColor: Colors.purple,
                  iconColor: Colors.black,
                  textColor: Colors.black,
                  backgroundColor: Colors.greenAccent.withOpacity(.2),
                  iconSize: 24.w,
                  padding: widget.padding,
                  icon: Icons.home,
                  text: 'Cart',
                  leading: widget.selectedIndex == 1
                      ? null
                      : Badge(
                          badgeColor: Colors.red,
                          elevation: 0,
                          position:
                              BadgePosition.topEnd(top: -12.h, end: -12.h),
                          badgeContent: Text(
                            '7',
                            style: TextStyle(color: Colors.white),
                          ),
                          child: Image.asset(
                            'assets/images/cart.png',
                            scale: 3.w,
                          ),
                        ),
                ),
                GButton(
                  onPressed: () => Navigator.pushNamed(context, '/chatList'),
                  borderRadius: BorderRadius.circular(10),
                  gap: widget.gap,
                  iconActiveColor: Colors.purple,
                  iconColor: Colors.black,
                  textColor: Colors.black,
                  backgroundColor: Colors.greenAccent.withOpacity(.2),
                  iconSize: 24.w,
                  padding: widget.padding,
                  icon: Icons.home,
                  text: 'Chat',
                  leading: widget.selectedIndex == 1
                      ? null
                      : Badge(
                          child: Image.asset(
                            'assets/images/chat.png',
                            scale: 3.w,
                          ),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
