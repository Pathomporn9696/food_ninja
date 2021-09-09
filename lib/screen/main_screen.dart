import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/cart_page.dart';
import 'package:food_ninja/profile_page.dart';
import 'package:food_ninja/widget/chat_list_page.dart';
import 'package:food_ninja/widget/home_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  late List<Widget> pages;
  late Widget currentPage;
  late HomePage homePage;
  late ProfilePage profilePage;
  late CartPage cartPage;
  late ChatListPage chatListPage;

  @override
  void initState() {
    super.initState();
    homePage = HomePage();
    profilePage = ProfilePage();
    cartPage = CartPage();
    chatListPage = ChatListPage();
    pages = [homePage,profilePage,cartPage,chatListPage];
    currentPage = homePage;
  }

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    double gap = 10;
    final padding = EdgeInsets.symmetric(horizontal: 18.w, vertical: 6.h);
    return SafeArea(
    
      child: Scaffold(
        body: currentPage,
        bottomNavigationBar: Container(
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
                      gap: gap,
                      iconActiveColor: Colors.black,
                      iconColor: Colors.black,
                      textColor: Colors.black,
                      backgroundColor: Colors.greenAccent.withOpacity(.2),
                      iconSize: 24.w,
                      padding: padding,
                      icon: Icons.search,
                      leading: Image.asset(
                        'assets/images/home.png',
                        scale: 3.w,
                      ),
                      text: 'Home',
                    ),
                    GButton(
                      borderRadius: BorderRadius.circular(10.r),
                      gap: 10,
                      iconActiveColor: Colors.black,
                      iconColor: Colors.black,
                      textColor: Colors.black,
                      backgroundColor: Colors.greenAccent.withOpacity(.2),
                      iconSize: 24.w,
                      padding: padding,
                      icon: Icons.search,
                      leading: Image.asset(
                        'assets/images/profile.png',
                        scale: 3,
                      ),
                      text: 'Profile',
                    ),
                    GButton(
                      borderRadius: BorderRadius.circular(10.r),
                      gap: gap,
                      iconActiveColor: Colors.purple,
                      iconColor: Colors.black,
                      textColor: Colors.black,
                      backgroundColor: Colors.greenAccent.withOpacity(.2),
                      iconSize: 24.w,
                      padding: padding,
                      icon: Icons.home,
                      text: 'Cart',
                      leading: selectedIndex == 1
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
                      borderRadius: BorderRadius.circular(10),
                      gap: gap,
                      iconActiveColor: Colors.purple,
                      iconColor: Colors.black,
                      textColor: Colors.black,
                      backgroundColor: Colors.greenAccent.withOpacity(.2),
                      iconSize: 24.w,
                      padding: padding,
                      icon: Icons.home,
                      text: 'Chat',
                      leading: selectedIndex == 1
                          ? null
                          : Badge(
                              child: Image.asset(
                                'assets/images/chat.png',
                                scale: 3.w,
                              ),
                            ),
                    ),
                  ],
                  onTabChange: (int index) {
                    setState(() {
                      currentIndex = index;
                      currentPage = pages[index];
                    });
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
