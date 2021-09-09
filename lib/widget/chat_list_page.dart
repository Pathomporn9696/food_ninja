import 'package:flutter/material.dart';
import 'package:food_ninja/model/user_model.dart';
import 'package:food_ninja/templete/build_bottomnavbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/templete/templete_userchat.dart';

class ChatListPage extends StatefulWidget {
  ChatListPage({Key? key}) : super(key: key);

  @override
  _ChatListPageState createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  int selectedIndex = 0;
  double gap = 10;
  final padding = EdgeInsets.symmetric(horizontal: 18.w, vertical: 6.h);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/pattern.png'),
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 35.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildIconBack(),
                SizedBox(height: 19.h),
                Text(
                  'Chat',
                  style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 12.h),
                SingleChildScrollView(
                  child: Column(
                    children: List.generate(User.users.length, (index) {
                      final user = User.users[index];
                      return Container(
                        padding: EdgeInsets.only(bottom: 20.h),
                        child: TempleteUser(
                          users: user,
                        ),
                      );
                    }),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildIconBack() {
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
        onPressed: () {},
      ),
    );
  }
}
