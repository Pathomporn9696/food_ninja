import 'package:flutter/material.dart';
import 'package:food_ninja/google_map/map_screen.dart';
import 'package:food_ninja/screen/main_screen.dart';
import 'package:food_ninja/user_chat_page.dart';
import 'package:food_ninja/widget/call_page.dart';
import 'package:food_ninja/widget/chat_list_page.dart';
import 'package:food_ninja/widget/confirm_order.dart';
import 'package:food_ninja/widget/edit_location.dart';
import 'package:food_ninja/widget/edit_payment.dart';
import 'package:food_ninja/widget/explore_menu.dart';
import 'package:food_ninja/widget/explore_restaurant.dart';
import 'package:food_ninja/widget/filter.dart';
import 'package:food_ninja/widget/forgotPassword/reset_password.dart';
import 'package:food_ninja/widget/forgotPassword/reset_success.dart';
import 'package:food_ninja/widget/forgotPassword/verify_code.dart';
import 'package:food_ninja/widget/forgotPassword/via_page.dart';
import 'package:food_ninja/widget/home_page.dart';

import 'package:food_ninja/widget/myLogin_page.dart';
import 'package:food_ninja/widget/notification_page.dart';
import 'package:food_ninja/widget/order_details.dart';
import 'package:food_ninja/widget/rating_food.dart';
import 'package:food_ninja/widget/rating_user.dart';
import 'package:food_ninja/widget/signup/payment_page.dart';
import 'package:food_ninja/widget/signup/setLocation.dart';
import 'package:food_ninja/widget/signup/signup_page.dart';
import 'package:food_ninja/widget/signup/signup_process.dart';
import 'package:food_ninja/widget/signup/signup_success.dart';
import 'package:food_ninja/widget/signup/upload_photo.dart';
import 'package:food_ninja/widget/splash_screen.dart';
import 'package:food_ninja/widget/vouncher_page.dart';

final Map<String, WidgetBuilder> routes = {
  '/':(BuildContext context)=> SplashScreen(),
  '/signin':(BuildContext context)=> MyLoginPage(),
  '/signup':(BuildContext context)=> SignUpPage(),
  '/signupProcess':(BuildContext context)=> SignUpProcess(),
  '/payment':(BuildContext context)=> PaymentPage(),
  '/uploadPhoto':(BuildContext context)=> UpLoadPhotoPage(),
  '/setLocation':(BuildContext context)=> SetLocationPage(),
  '/signupSuccess':(BuildContext context)=> SignSuccess(),
  '/verifyCode':(BuildContext context)=> VerifyCodePage(),
  '/vaiPage':(BuildContext context)=> ViaPage(),
  '/resetPassword':(BuildContext context)=> RePassword(),
  '/resetSuccess':(BuildContext context)=> ReSuccess(),
  '/homePage':(BuildContext context)=> HomePage(),
  '/exploreRes':(BuildContext context)=> ExploreResPage(),
  '/filter':(BuildContext context)=> Filter(),
  '/exploreMenu':(BuildContext context)=> ExploreMenuPage(),
  '/chatList':(BuildContext context)=> ChatListPage(),
  '/mainScreen':(BuildContext context)=> MainScreen(),
  '/userChatPage':(BuildContext context)=>UserChatPage(),
  '/callPage':(BuildContext context)=>CallPage(),
  '/ratingUser':(BuildContext context)=>RatingUserPage(),
  '/ratingFood':(BuildContext context)=>RatingFood(),
  '/vouncherPage':(BuildContext context)=>VoucherPage(),
  '/notificationPage':(BuildContext context)=>NotificationPage(),
  '/OrderDetails':(BuildContext context)=>OrderDetailsPage(),
  '/ConfirmOrder':(BuildContext context)=>ConfirmOrderPage(),
  '/EditPayment':(BuildContext context)=>EditPayment(),
  '/EditLocation':(BuildContext context)=>EditLocation(),
  '/MapScreen':(BuildContext context)=>MapScreen(),
};