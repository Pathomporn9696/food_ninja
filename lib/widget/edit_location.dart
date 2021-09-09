import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditLocation extends StatefulWidget {
  EditLocation({Key? key}) : super(key: key);

  @override
  _EditLocationState createState() => _EditLocationState();
}

class _EditLocationState extends State<EditLocation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage('assets/images/pattern.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              backicon_title(context),
              SizedBox(height: 20.h),
              OrderLocation(),
              SizedBox(height: 20.h),
              Container(
                padding: EdgeInsets.only(left: 12.w, top: 17.h),
                height: 141,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5.0,
                        color: Colors.black38,
                        offset: Offset(0, 1)),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Order Location',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black38,
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 33.w,
                          height: 33.h,
                          child: Image.asset(
                            'assets/images/iconlocation.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 14.w),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '4517 Washington Ave. Manchester,\nKentucky 39495',
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 15.h),
                              GestureDetector(
                                onTap: ()=>Navigator.pushNamed(context, '/MapScreen'),
                                child: Text(
                                  'set location',
                                  style: TextStyle(
                                    color: Colors.greenAccent,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container OrderLocation() {
    return Container(
      padding: EdgeInsets.only(left: 12.w, top: 17.h),
      height: 107,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              blurRadius: 5.0, color: Colors.black38, offset: Offset(0, 1)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Order Location',
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.black38,
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Row(
            children: [
              Container(
                width: 33.w,
                height: 33.h,
                child: Image.asset(
                  'assets/images/iconlocation.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(width: 14.w),
              Text(
                '8502 Preston Rd. Inglewood,\nMaine 98380',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container backicon_title(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5.w, top: 38.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          backIcon(context),
          SizedBox(height: 19.h),
          Text(
            'Shipping',
            style: TextStyle(
              fontSize: 25.sp,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
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
