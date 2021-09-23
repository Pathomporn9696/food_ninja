import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailMenuPage extends StatefulWidget {
  DetailMenuPage({Key? key}) : super(key: key);

  @override
  _DetailMenuPageState createState() => _DetailMenuPageState();
}

class DetailUser {
  final String userImage;

  DetailUser(this.userImage);
}

List<DetailUser> listUser = [
  DetailUser('assets/images/profile1.png'),
  DetailUser('assets/images/profile2.png'),
];

class _DetailMenuPageState extends State<DetailMenuPage> {
  final double expanded_height = 400;
  final double rounded_container_height = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildSliverHead(),
          SliverToBoxAdapter(
            child: _buildDetail(),
          )
        ],
      ),
    );
  }

  _buildSliverHead() {
    return SliverPersistentHeader(
      delegate: DetailSliverDelegate(expanded_height, rounded_container_height),
    );
  }

  _buildDetail() {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTopbar(),
          _buildNameAndDetailMenu(),
          _buildTestimonials(),
          _buildBtnAddChart(),
        ],
      ),
    );
  }

  _buildTestimonials() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 20.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 13.w),
            child: Text(
              'Testimonials',
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Column(
            children: UserReview,
          )
        ],
      ),
    );
  }

  final List<Widget> UserReview = listUser
      .map(
        (item) => Container(
          padding: EdgeInsets.only(
            top: 11.h,
            left: 10.w,
          ),
          margin: EdgeInsets.only(bottom: 20.h),
          width: double.infinity,
          height: 128.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22.r),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                offset: Offset(1, 2),
                blurRadius: 5,
              )
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 64.w,
                height: 64.h,
                child: Image.asset(
                  item.userImage,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(width: 20.w),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dianne Russell',
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '12 April 2021',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black38,
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 59.w),
                        Container(
                          width: 53.w,
                          height: 33.h,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(18.5.r),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 17.w,
                                height: 17.h,
                                child: Image.asset(
                                  'assets/images/starfull.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(width: 6.w),
                              Text(
                                '5',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.greenAccent,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'This Is great, So delicious! You Must\nHere, With Your family . . ',
                      style: TextStyle(
                        fontSize: 12.sp,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
      .toList();

  _buildNameAndDetailMenu() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 33.w, vertical: 19.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Rainbow Sandwich\nSugarless',
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30.h),
          Row(
            children: [
              Container(
                height: 20.h,
                width: 20.h,
                child: Image.asset(
                  'assets/images/iconstar.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(width: 10.w),
              Text(
                '4.8 Rating',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.black38,
                ),
              ),
              SizedBox(width: 20.w),
              Container(
                height: 20.h,
                width: 20.h,
                child: Image.asset(
                  'assets/images/shoppingbag.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(width: 10.w),
              Text(
                '2000+ Order',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.black38,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Text(
            'Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt. Velit non est cillum consequat cupidatat ex Lorem laboris labore aliqua ad duis eu laborum.\n\n  • Strowberry\n  • Cream\n  • wheat\n\nNulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt.',
            style: TextStyle(fontSize: 12.sp, height: 1.5.h),
          ),
        ],
      ),
    );
  }

  _buildTopbar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 76.w,
            height: 34.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.5.r),
              color: Colors.greenAccent.withOpacity(0.2),
            ),
            child: Center(
              child: Text(
                'Popular',
                style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            width: 140.w,
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green.withOpacity(0.1),
            ),
            width: 34.w,
            height: 34.h,
            child: Image.asset(
              'assets/images/shape.png',
              scale: 3.r,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red.withOpacity(0.2),
            ),
            width: 34.w,
            height: 34.h,
            child: Image.asset(
              'assets/images/heart.png',
              scale: 3.r,
            ),
          ),
        ],
      ),
    );
  }

  _buildBtnAddChart() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 25.w,
      ),
      child: GestureDetector(
        onTap: () => Navigator.popAndPushNamed(context, '/mainScreen'),
        child: Container(
          width: double.infinity,
          height: 57,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.greenAccent,
                Colors.green,
              ],
            ),
          ),
          child: Center(
            child: Text(
              'Add To Chart',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DetailSliverDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final double rounded_container_height;

  DetailSliverDelegate(this.expandedHeight, this.rounded_container_height);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/sandwich.png',
          width: MediaQuery.of(context).size.width,
          height: expandedHeight,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: expandedHeight - rounded_container_height - shrinkOffset,
          left: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: rounded_container_height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
