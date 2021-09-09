import 'package:flutter/material.dart';
import 'package:food_ninja/widget/myLogin_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroScreenPage extends StatefulWidget {
  IntroScreenPage({Key? key}) : super(key: key);

  @override
  _IntroScreenPageState createState() => _IntroScreenPageState();
}

class _IntroScreenPageState extends State<IntroScreenPage> {
  final introKey = GlobalKey<IntroductionScreenState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: IntroductionScreen(
          key: introKey,
          pages: [
            PageViewModel(
              title: 'Find your Comfort \n Food here',
              body:
                  'Here You Can find a chef or dish for every \n taste and color. Enjoy!',
              image: _buildImage('intro1.png'),
              footer: TextButton(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0.r),
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [Colors.greenAccent, Colors.green],
                    ),
                  ),
                  width: 140.w,
                  height: 50.h,
                  child: Center(
                    child: Text(
                      'Next',
                      style: GoogleFonts.viga(
                        textStyle: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  introKey.currentState?.animateScroll(1);
                },
              ),
              decoration: PageDecoration(
                imageFlex: 3,
                bodyFlex: 2,
                titleTextStyle: GoogleFonts.viga(
                  textStyle:
                      TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                ),
                bodyTextStyle: GoogleFonts.viga(
                  textStyle:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.normal),
                ),
                imageAlignment: Alignment.bottomCenter,
                bodyAlignment: Alignment.topCenter,
              ),
            ),
            PageViewModel(
              title: 'Food Ninja is Where Your \n Comfort Food Lives',
              body: 'Enjoy a fast and smooth food delivery at \n your doorstep',
              image: _buildImage('intro2.png'),
              footer: TextButton(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0.r),
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [Colors.greenAccent, Colors.green],
                    ),
                  ),
                  width: 140.w,
                  height: 50.h,
                  child: Center(
                    child: Text(
                      'Next',
                      style: GoogleFonts.viga(
                        textStyle: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyLoginPage())),
              ),
              decoration: PageDecoration(
                imageFlex: 3,
                bodyFlex: 2,
                titleTextStyle: GoogleFonts.viga(
                  textStyle:
                      TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                ),
                bodyTextStyle: GoogleFonts.viga(
                  textStyle:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.normal),
                ),
                imageAlignment: Alignment.bottomCenter,
                bodyAlignment: Alignment.topCenter,
              ),
            ),
          ],
          showNextButton: false,
          showDoneButton: false,
          onDone: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyLoginPage())),
        ),
      ),
    );
  }

  Widget _buildImage(
    String assetName,
  ) {
    return Image.asset(
      'assets/images/$assetName',
      fit: BoxFit.cover,
      width: double.infinity.w,
    );
  }
}
