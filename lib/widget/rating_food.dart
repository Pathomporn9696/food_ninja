import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingFood extends StatefulWidget {
  RatingFood({Key? key}) : super(key: key);

  @override
  _RatingFoodState createState() => _RatingFoodState();
}

class _RatingFoodState extends State<RatingFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/pattern.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Column(
            children: [
              SizedBox(height: 140.h),
              Container(
                height: 580,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    imageFood(),
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
          onTap: () => Navigator.pushNamed(context, '/ratingFood'),
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
          onTap: () => Navigator.popAndPushNamed(context, '/mainScreen'),
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

  Container imageFood() {
    return Container(
      width: 197.w,
      height: 191.h,
      child: Stack(
        children: [
          Center(
            child: Container(
              width: 188.w,
              height: 184.h,
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
          Center(
            child: Container(
              width: 197,
              height: 191,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/greennoddle.png'))),
            ),
          )
        ],
      ),
    );
  }
}
