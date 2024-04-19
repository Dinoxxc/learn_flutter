import 'package:learn_flutter/screens/login_screen/login_screen.dart';
import 'package:learn_flutter/screens/splash_screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'screens/my_profile/my_profile.dart';

Map<String, WidgetBuilder> routes = {
  //all screens will be registered here like manifest in android
  SplashScreen.routeName: (context) => SplashScreen(),
  MyProfileScreen.routeName: (context) => MyProfileScreen(),
};