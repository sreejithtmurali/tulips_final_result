// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i14;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i15;
import 'package:tulips/ui/app_navigation_screen/app_navigation_screen.dart'
    as _i5;
import 'package:tulips/ui/facial_screen/facial_screen.dart' as _i11;
import 'package:tulips/ui/home_container_screen/home_container_screen.dart'
    as _i6;
import 'package:tulips/ui/home_one_screen/home_one_screen.dart' as _i10;
import 'package:tulips/ui/home_page/home_page.dart' as _i9;
import 'package:tulips/ui/offer_page/offer_page.dart' as _i13;
import 'package:tulips/ui/onboard_screen/onboard_screen.dart' as _i3;
import 'package:tulips/ui/otp_screen/otp_screen.dart' as _i8;
import 'package:tulips/ui/profie/profile_one_screen.dart' as _i12;
import 'package:tulips/ui/sign_in_screen/sign_in_screen.dart' as _i4;
import 'package:tulips/ui/sign_up_screen/sign_up_screen.dart' as _i7;
import 'package:tulips/ui/splash_screen/splash_view.dart' as _i2;

class Routes {
  static const splashView = '/';

  static const onboardView = '/onboard-view';

  static const signInScreen = '/sign-in-screen';

  static const appNavigationScreen = '/app-navigation-screen';

  static const homeContainerScreen = '/home-container-screen';

  static const signUpScreen = '/sign-up-screen';

  static const otpScreen = '/otp-screen';

  static const homePage = '/home-page';

  static const homeOneScreen = '/home-one-screen';

  static const facialScreen = '/facial-screen';

  static const profileOneScreen = '/profile-one-screen';

  static const offerPage = '/offer-page';

  static const all = <String>{
    splashView,
    onboardView,
    signInScreen,
    appNavigationScreen,
    homeContainerScreen,
    signUpScreen,
    otpScreen,
    homePage,
    homeOneScreen,
    facialScreen,
    profileOneScreen,
    offerPage,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.splashView,
      page: _i2.SplashView,
    ),
    _i1.RouteDef(
      Routes.onboardView,
      page: _i3.OnboardView,
    ),
    _i1.RouteDef(
      Routes.signInScreen,
      page: _i4.SignInScreen,
    ),
    _i1.RouteDef(
      Routes.appNavigationScreen,
      page: _i5.AppNavigationScreen,
    ),
    _i1.RouteDef(
      Routes.homeContainerScreen,
      page: _i6.HomeContainerScreen,
    ),
    _i1.RouteDef(
      Routes.signUpScreen,
      page: _i7.SignUpScreen,
    ),
    _i1.RouteDef(
      Routes.otpScreen,
      page: _i8.OtpScreen,
    ),
    _i1.RouteDef(
      Routes.homePage,
      page: _i9.HomePage,
    ),
    _i1.RouteDef(
      Routes.homeOneScreen,
      page: _i10.HomeOneScreen,
    ),
    _i1.RouteDef(
      Routes.facialScreen,
      page: _i11.FacialScreen,
    ),
    _i1.RouteDef(
      Routes.profileOneScreen,
      page: _i12.ProfileOneScreen,
    ),
    _i1.RouteDef(
      Routes.offerPage,
      page: _i13.OfferPage,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.SplashView: (data) {
      final args = data.getArgs<SplashViewArguments>(
        orElse: () => const SplashViewArguments(),
      );
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => _i2.SplashView(key: args.key),
        settings: data,
      );
    },
    _i3.OnboardView: (data) {
      final args = data.getArgs<OnboardViewArguments>(
        orElse: () => const OnboardViewArguments(),
      );
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => _i3.OnboardView(key: args.key),
        settings: data,
      );
    },
    _i4.SignInScreen: (data) {
      final args = data.getArgs<SignInScreenArguments>(
        orElse: () => const SignInScreenArguments(),
      );
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => _i4.SignInScreen(key: args.key),
        settings: data,
      );
    },
    _i5.AppNavigationScreen: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.AppNavigationScreen(),
        settings: data,
      );
    },
    _i6.HomeContainerScreen: (data) {
      final args = data.getArgs<HomeContainerScreenArguments>(
        orElse: () => const HomeContainerScreenArguments(),
      );
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => _i6.HomeContainerScreen(key: args.key),
        settings: data,
      );
    },
    _i7.SignUpScreen: (data) {
      final args = data.getArgs<SignUpScreenArguments>(
        orElse: () => const SignUpScreenArguments(),
      );
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => _i7.SignUpScreen(key: args.key),
        settings: data,
      );
    },
    _i8.OtpScreen: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.OtpScreen(),
        settings: data,
      );
    },
    _i9.HomePage: (data) {
      final args = data.getArgs<HomePageArguments>(
        orElse: () => const HomePageArguments(),
      );
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => _i9.HomePage(key: args.key),
        settings: data,
      );
    },
    _i10.HomeOneScreen: (data) {
      final args = data.getArgs<HomeOneScreenArguments>(
        orElse: () => const HomeOneScreenArguments(),
      );
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => _i10.HomeOneScreen(key: args.key),
        settings: data,
      );
    },
    _i11.FacialScreen: (data) {
      final args = data.getArgs<FacialScreenArguments>(
        orElse: () => const FacialScreenArguments(),
      );
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => _i11.FacialScreen(key: args.key),
        settings: data,
      );
    },
    _i12.ProfileOneScreen: (data) {
      final args = data.getArgs<ProfileOneScreenArguments>(
        orElse: () => const ProfileOneScreenArguments(),
      );
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => _i12.ProfileOneScreen(key: args.key),
        settings: data,
      );
    },
    _i13.OfferPage: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.OfferPage(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class SplashViewArguments {
  const SplashViewArguments({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant SplashViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class OnboardViewArguments {
  const OnboardViewArguments({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant OnboardViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class SignInScreenArguments {
  const SignInScreenArguments({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant SignInScreenArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class HomeContainerScreenArguments {
  const HomeContainerScreenArguments({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant HomeContainerScreenArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class SignUpScreenArguments {
  const SignUpScreenArguments({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant SignUpScreenArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class HomePageArguments {
  const HomePageArguments({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant HomePageArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class HomeOneScreenArguments {
  const HomeOneScreenArguments({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant HomeOneScreenArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class FacialScreenArguments {
  const FacialScreenArguments({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant FacialScreenArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class ProfileOneScreenArguments {
  const ProfileOneScreenArguments({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant ProfileOneScreenArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

extension NavigatorStateExtension on _i15.NavigationService {
  Future<dynamic> navigateToSplashView({
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.splashView,
        arguments: SplashViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOnboardView({
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.onboardView,
        arguments: OnboardViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSignInScreen({
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.signInScreen,
        arguments: SignInScreenArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAppNavigationScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.appNavigationScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHomeContainerScreen({
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.homeContainerScreen,
        arguments: HomeContainerScreenArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSignUpScreen({
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.signUpScreen,
        arguments: SignUpScreenArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOtpScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.otpScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHomePage({
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.homePage,
        arguments: HomePageArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHomeOneScreen({
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.homeOneScreen,
        arguments: HomeOneScreenArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFacialScreen({
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.facialScreen,
        arguments: FacialScreenArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfileOneScreen({
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.profileOneScreen,
        arguments: ProfileOneScreenArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOfferPage([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.offerPage,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSplashView({
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.splashView,
        arguments: SplashViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOnboardView({
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.onboardView,
        arguments: OnboardViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSignInScreen({
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.signInScreen,
        arguments: SignInScreenArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAppNavigationScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.appNavigationScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeContainerScreen({
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.homeContainerScreen,
        arguments: HomeContainerScreenArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSignUpScreen({
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.signUpScreen,
        arguments: SignUpScreenArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOtpScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.otpScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomePage({
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.homePage,
        arguments: HomePageArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeOneScreen({
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.homeOneScreen,
        arguments: HomeOneScreenArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFacialScreen({
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.facialScreen,
        arguments: FacialScreenArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfileOneScreen({
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.profileOneScreen,
        arguments: ProfileOneScreenArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOfferPage([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.offerPage,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
