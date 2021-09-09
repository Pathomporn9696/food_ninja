import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingUserPage extends StatefulWidget {
  RatingUserPage({Key? key}) : super(key: key);

  @override
  _RatingUserPageState createState() => _RatingUserPageState();
}

class _RatingUserPageState extends State<RatingUserPage> {
  late double rating;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/images/pattern.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(height: 170.h),
              Container(
                height: 550,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    imageUser(),
                    SizedBox(height: 50.h),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              'Thank You!\nOrder Completed',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 25.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            'Please rate your last Driver',
                            style: TextStyle(
                                fontSize: 14.sp, color: Colors.black38),
                          ),
                          SizedBox(height: 40.h),
                          ratingBar(),
                          SizedBox(height: 77.h),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              feedbackField(),
              SizedBox(height: 20.h),
              submitAndskip(),
            ],
          ),
        ),
      ),
    );
  }

  Row submitAndskip() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: ()=>Navigator.pushNamed(context, '/ratingFood'),
          child: Container(
            width: 233.w,
            height: 57.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.greenAccent, Colors.green],
              ),
            ),
            child: Center(
              child: Text(
                'Submit',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: ()=>Navigator.popAndPushNamed(context, '/mainScreen'),
          child: Container(
            width: 82.w,
            height: 57.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6.0.r,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Center(
              child: Text(
                'Skip',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.greenAccent,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Container feedbackField() {
    return Container(
      height: 55.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Image.asset(
            'assets/images/editIcon.png',
            scale: 3,
            alignment: Alignment(1, 0),
          ),
          hintText: 'Leave feedback',
          hintStyle: TextStyle(
            fontSize: 14.sp,
            color: Colors.black38,
          ),
          fillColor: Colors.greenAccent,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
      ),
    );
  }

  RatingBar ratingBar() {
    return RatingBar.builder(
      glowColor: Colors.black,
      itemPadding: EdgeInsets.all(5),
      initialRating: 3,
      itemCount: 5,
      itemBuilder: (context, index) {
        switch (index) {
          case 0:
            return Image.asset('assets/images/star.png');
          case 1:
            return Image.asset('assets/images/star.png');
          case 2:
            return Image.asset('assets/images/star.png');
          case 3:
            return Image.asset('assets/images/star.png');
          case 4:
            return Image.asset('assets/images/star.png');
          default:
            return Container(
              color: Colors.black,
            );
        }
      },
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }

  Container imageUser() {
    return Container(
      width: 172.w,
      height: 162.h,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 21.w,
              height: 21.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.greenAccent,
                    Colors.green,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 20,
            child: Container(
              width: 5.w,
              height: 5.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.greenAccent,
                    Colors.green,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            child: Container(
              width: 10.w,
              height: 10.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.greenAccent,
                    Colors.green,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 30,
            right: 0,
            child: Container(
              width: 13.w,
              height: 13.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.greenAccent,
                    Colors.green,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 1,
            right: 1,
            child: Container(
              width: 140.w,
              height: 140.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.greenAccent, Colors.green],
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            bottom: 6,
            left: 1,
            right: 1,
            child: Container(
              width: 130.w,
              height: 130.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/user1.png'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
