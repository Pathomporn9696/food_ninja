import 'package:flutter/material.dart';
import 'package:food_ninja/utility/my_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class DetailFmenu {
  final pathFmenuImage;
  final nameFmenu;
  final resNameFmenu;
  final priceFmenu;

  DetailFmenu(
    this.pathFmenuImage,
    this.nameFmenu,
    this.resNameFmenu,
    this.priceFmenu,
  );
}

List<DetailFmenu> listFmenu = [
  DetailFmenu(
    'assets/images/foodmenu2.png',
    'Spacy fresh crab',
    'Waroenk kita',
    '35 ฿',
  ),
  DetailFmenu(
    'assets/images/foodmenu1.png',
    'Spacy fresh crab',
    'Waroenk kita',
    '35 ฿',
  ),
  DetailFmenu(
    'assets/images/iscream.png',
    'Spacy fresh crab',
    'Waroenk kita',
    '35 ฿',
  ),
];

class _ProfilePageState extends State<ProfilePage> {
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
          buildRankMember(),
          buildNameAndEdit(),
          buildHaveVoucher(),
          buildFavorite(),
        ],
      ),
    );
  }

  buildRankMember() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 21.w,
      ),
      child: Container(
        width: 111.w,
        height: 34.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.5.r),
          color: Color(0xffFEAD1D).withOpacity(0.1),
        ),
        child: Center(
          child: Text(
            'Member Gold',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12.sp,
              color: Color(0xffFEAD1D),
            ),
          ),
        ),
      ),
    );
  }

  buildNameAndEdit() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Anam Wusono',
                style: TextStyle(fontSize: 27.sp, fontWeight: FontWeight.bold),
              ),
              Container(
                width: 24.w,
                height: 24.h,
                child: Image.asset(
                  'assets/images/editicon2.png',
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          SizedBox(height: 4.h),
          Text(
            'anamwp66@gmail.com',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black38,
            ),
          ),
        ],
      ),
    );
  }

  buildHaveVoucher() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Container(
        width: double.infinity,
        height: 64.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              offset: Offset(1, 2),
              blurRadius: 4,
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              Container(
                width: 46.w,
                height: 43.h,
                child: Image.asset(
                  'assets/images/voucher.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 16.w),
              Text(
                'You Have 3 Voucher',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildFavorite() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.w),
            child: Text(
              'Favorite',
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Column(
            children: Fmenu,
          )
        ],
      ),
    );
  }

  final List<Widget> Fmenu = listFmenu
      .map(
        (item) => Container(
          padding: EdgeInsets.only(left: 14.w, right: 17.w),
          margin: EdgeInsets.only(bottom: 20.h),
          width: double.infinity,
          height: 103.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22.r),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black45,
                offset: Offset(1, 2),
                blurRadius: 4,
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 62.w,
                height: 62.h,
                child: Image.asset(
                  item.pathFmenuImage,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                // margin: EdgeInsets.only(left: 17.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.nameFmenu,
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      item.resNameFmenu,
                      style: TextStyle(fontSize: 14.sp, color: Colors.black38),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      item.priceFmenu,
                      style: TextStyle(
                          fontSize: 19.sp,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(),
              Container(
                width: 85.w,
                height: 29.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17.5.r),
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
                    'Buy Again',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
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
          'assets/images/photoprofile.png',
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
        )
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
