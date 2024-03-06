import 'package:flutter/material.dart';
import 'package:tulips/ui/offer_page/offer_page.dart';
import 'package:tulips/ui/profie/profile_one_screen.dart';

import '../ui/home_screen/home_screen.dart';
import '../ui/facial_screen/facial_screen.dart';
import '../ui/splash_screen/splash_view.dart';
import '../ui/sign_up_screen/sign_up_screen.dart';
import '../ui/contact_screen/contact_screen.dart';
import '../ui/onboard_screen/onboard_screen.dart';
import '../ui/sign_in_screen/sign_in_screen.dart';
import '../ui/otp_screen/otp_screen.dart';
import '../ui/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String profileScreen = '/profile_screen';

  static const String offerContainerScreen = '/offer_container_screen';

  static const String offerPage = '/offer_page';

  static const String homeScreen = '/home_screen';

  static const String facialScreen = '/facial_screen';

  static const String splashScreen = '/splash_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String contactScreen = '/contact_screen';

  static const String onboardScreen = '/onboard_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String otpScreen = '/otp_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    profileScreen: (context) => ProfileScreen(),
    offerContainerScreen: (context) => OfferPage(),
    homeScreen: (context) => HomeScreen(),
    facialScreen: (context) => FacialScreen(catname: '',),
    splashScreen: (context) => SplashView(),
    signUpScreen: (context) => SignUpScreen(phone: '',),
    contactScreen: (context) => ContactScreen(),
    onboardScreen: (context) => OnboardScreen(),
    signInScreen: (context) => SignInScreen(),
    otpScreen: (context) => OtpScreen(phone: '',),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
