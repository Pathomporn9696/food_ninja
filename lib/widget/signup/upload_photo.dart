import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class UpLoadPhotoPage extends StatefulWidget {
  UpLoadPhotoPage({Key? key}) : super(key: key);

  @override
  _UpLoadPhotoPageState createState() => _UpLoadPhotoPageState();
}

class _UpLoadPhotoPageState extends State<UpLoadPhotoPage> {
  String imagePath = "";
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffFEFEFF),
      body: Container(
        width: double.infinity.w,
        height: double.infinity.h,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/pattern.png'),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: 40.h,
            horizontal: 25.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildBack(context),
              SizedBox(height: 20.h),
              Text(
                'Upload Your Photo\nProfile',
                style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 19.h),
              Text(
                'This data will be displayed in your account\nprofile for security',
                style: TextStyle(fontSize: 12.sp, color: Colors.black54),
              ),
              SizedBox(height: 20.h),
              buildImage(),
              SizedBox(height: 20.h),
              buildGalleryBtn(),
              SizedBox(height: 20.h),
              buildPhotoBtn(),
              SizedBox(height: 130.h),
              buildNext(context),
            ],
          ),
        ),
      ),
    ));
  }

  Container buildImage() {
    return Container(
      child: imagePath != ""
          ? Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.r),
                ),
                height: 238.h,
                width: 245.w,
                child: Image.file(
                  File(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            )
          : Container(),
    );
  }

  GestureDetector buildBack(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/payment'),
      child: Container(
        width: 45.w,
        height: 45.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Color(
              0x40f9a84d,
            )),
        child: Icon(
          Icons.chevron_left_outlined,
          size: 30.w,
          color: Color(0xFFDA6317),
        ),
      ),
    );
  }

  // Future<void> chooseImage(ImageSource imageSource) async {
  //   try {
  //     var object = await ImagePicker()
  //         .getImage(source: imageSource, maxHeight: 238.h, maxWidth: 245.w);
  //     setState(() {
  //       file = File(object!.path);
  //     });
  //   } catch (e) {}
  // }

  GestureDetector buildGalleryBtn() {
    return GestureDetector(
      onTap: () async {
        final pickedFile = await picker.getImage(source: ImageSource.gallery);
        if (pickedFile != null) {
          setState(() {
            imagePath = pickedFile.path;
          });
        }
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(20.0.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6.0.r,
              offset: Offset(0, 2),
            )
          ],
        ),
        height: 129.h,
        child: Image.asset(
          'assets/images/gallery.png',
          scale: 3.w,
        ),
      ),
    );
  }

  GestureDetector buildPhotoBtn() {
    return GestureDetector(
      onTap: () async {
        final pickedFile = await picker.getImage(source: ImageSource.camera);
        if (pickedFile != null){
          setState(() {
            imagePath = pickedFile.path;
          });
        }
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(20.0.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6.0.r,
              offset: Offset(0, 2),
            )
          ],
        ),
        height: 129.h,
        child: Image.asset(
          'assets/images/cameraI.png',
          scale: 3.w,
        ),
      ),
    );
  }

  GestureDetector buildNext(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/setLocation'),
      child: Center(
        child: Container(
          height: 57.h,
          width: 157.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0.r),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.greenAccent, Colors.green],
            ),
          ),
          child: Center(
            child: Text(
              'Next',
              style: GoogleFonts.viga(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
