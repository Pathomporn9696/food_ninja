import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/model/image_detailsmenu_model.dart';
import 'package:food_ninja/templete/order_details.dart';

class OrderDetailsPage extends StatefulWidget {
  OrderDetailsPage({Key? key}) : super(key: key);

  @override
  _OrderDetailsPageState createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 38.h),
                Container(
                  padding: EdgeInsets.only(left: 11.w),
                  child: backIcon(context),
                ),
                SizedBox(height: 20.h),
                Container(
                  padding: EdgeInsets.only(left: 11.w),
                  child: Text(
                    'Order details',
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                OrderDetail(),
                SizedBox(height: 30.h),
                totalCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container totalCard() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      width: double.infinity,
      height: 206.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.r),
        image: DecorationImage(
          image: AssetImage('assets/images/patterncard.png'),
          fit: BoxFit.cover,
        ),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color(0xff53E88B),
            Color(0xff15BE77),
          ],
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 20.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            width: 295.w,
            height: 95.h,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sub-Total',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '120 ฿',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery Charge',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '10 ฿',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Discount',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '20 ฿',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '150 ฿',
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 19.h),
          GestureDetector(
            onTap: ()=>Navigator.pushNamed(context, '/ConfirmOrder'),
            child: Container(
              width: 325.w,
              height: 57.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  15.r,
                ),
              ),
              child: Center(
                child: Text(
                  'Place My Order',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                    color: Colors.greenAccent,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container OrderDetail() {
    return Container(
      child: Column(
        children: List.generate(
          DetailMenu.detailMenu.length,
          (index) {
            final detaimenu = DetailMenu.detailMenu[index];
            return Container(
              margin: EdgeInsets.only(bottom: 20.h),
              child: OrderDetailsTemplate(
                detailMenu: detaimenu,
              ),
            );
          },
        ),
      ),
    );
  }

  GestureDetector backIcon(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        width: 45.w,
        height: 45.h,
        decoration: BoxDecoration(
          color: Color(0xffF9A84D).withOpacity(0.2),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Icon(
          Icons.chevron_left,
          color: Color(0xffDA6317),
          size: 35.w,
        ),
      ),
    );
  }
}
