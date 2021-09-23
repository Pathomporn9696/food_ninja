import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/model/image_detailsmenu_model.dart';

class DetailRes extends StatefulWidget {
  DetailRes({Key? key}) : super(key: key);

  @override
  _DetailResState createState() => _DetailResState();
}

class DetailUser {
  final String userImage;

  DetailUser(this.userImage);
}

List<DetailUser> listUser = [
  DetailUser('assets/images/profile1.png'),
  DetailUser('assets/images/profile2.png'),
];

class DetailMenu {
  final String pathImage;
  final String menuName;
  final String menuPrice;

  DetailMenu(
    this.pathImage,
    this.menuName,
    this.menuPrice,
  );
}

List<DetailMenu> listMenu = [
  DetailMenu(
    'assets/images/sandwich.png',
    'Rainbow Sandwich',
    '15 ฿',
  ),
  DetailMenu(
    'assets/images/pizza.png',
    'Spacy fresh crab',
    '12 ฿',
  ),
  DetailMenu(
    'assets/images/meat.png',
    'Spacy fresh crab',
    '16 ฿',
  ),
];

class _DetailResState extends State<DetailRes> {
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
          ),
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
          _buildNameAndDetailRes(),
          _buildPopularMenu(context),
          _buildTestimonials(),
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

  _buildNameAndDetailRes() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 33.w, vertical: 19.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Vegan Resto',
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30.h),
          Row(
            children: [
              Container(
                height: 20.h,
                width: 20.h,
                child: Image.asset(
                  'assets/images/iconmap.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(width: 10.w),
              Text(
                '19 Km',
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
            ],
          ),
          SizedBox(height: 20.h),
          Text(
            'Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .',
            style: TextStyle(fontSize: 12.sp, height: 1.5.h),
          ),
        ],
      ),
    );
  }

  _buildPopularMenu(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 13.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Menu',
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Color(0xffFF7C32),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20.h),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 3.w),
              height: 173.h,
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/DetailMenu'),
                child: Row(children: menuScroll),
              ),
            ),
          )
        ],
      ),
    );
  }

  final List<Widget> menuScroll = listMenu
      .map(
        (item) => Container(
          margin: EdgeInsets.only(right: 20.w),
          child: Container(
            child: Container(
              width: 147.w,
              height: 171.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.r),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    offset: Offset(1, 2),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 71.h,
                    width: 71.w,
                    child: Container(
                      child: Image.asset(
                        item.pathImage,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    item.menuName,
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    item.menuPrice,
                    style: TextStyle(
                      fontSize: 13.sp,
                      color: Colors.black38,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      )
      .toList();

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
          'assets/images/photores.png',
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
