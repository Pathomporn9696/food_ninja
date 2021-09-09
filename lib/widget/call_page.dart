import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  bool statusvolume = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffFEFEFF),
            image: DecorationImage(
              image: AssetImage('assets/images/pattern.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 450.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          imageUser(),
                          SizedBox(height: 60.h),
                          Container(
                            height: 72.h,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Dianne Russell',
                                  style: TextStyle(
                                    fontSize: 25.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Ringing . . .',
                                  style: TextStyle(
                                      fontSize: 19.sp, color: Colors.black38),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 100.h),
                    Container(
                      height: 80.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 78.w,
                            height: 78.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.greenAccent.withOpacity(0.2),
                            ),
                            child: IconButton(
                              icon: statusvolume
                                  ? Image.asset(
                                      'assets/images/volume.png',
                                      scale: 3,
                                    )
                                  : Image.asset(
                                      'assets/images/volumeoff.png',
                                      scale: 3,
                                    ),
                              onPressed: () {
                                setState(() {
                                  statusvolume = !statusvolume;
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 20.w),
                          Container(
                            width: 78.w,
                            height: 78.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.clear,
                                size: 40,
                                color: Colors.white,
                              ),
                              onPressed: ()=>Navigator.pushNamed(context, '/ratingUser'),
                            ),
                          ),
                        ],
                      ),
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

  Container imageUser() {
    return Container(
      width: 165.w,
      height: 165.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 165.w,
            height: 165.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.greenAccent, Colors.green],
              ),
              shape: BoxShape.circle,
            ),
          ),
          Container(
            width: 155.w,
            height: 155.h,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/user1.png'))),
          )
        ],
      ),
    );
  }
}
