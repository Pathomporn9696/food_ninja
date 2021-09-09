import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/model/menu_model.dart';


class TemMenu extends StatelessWidget {
  const TemMenu({Key? key,this.menus}) : super(key: key);

  final Menu? menus;

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.only(
                  top: 12.h, bottom: 12.h, right: 20.w, left: 10.w),
              margin: EdgeInsets.only(bottom: 10.h),
              height: 87.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.r),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6.0.r,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Image.asset(
                      menus!.imageMenu,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        menus!.nameMenu,
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        menus!.titleMenu,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black38,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20.w),
                  Text(
                    menus!.priceMenu,
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffFEAD1D),
                    ),
                  ),
                ],
              ),
            );
  }
}