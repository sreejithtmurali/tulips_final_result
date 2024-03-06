// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i14;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i16;
import 'package:tulips/ui/app_navigation_screen/app_navigation_screen.dart'
    as _i5;
import 'package:tulips/ui/dashboard_screen/dashboard_screen.dart' as _i8;
import 'package:tulips/ui/detail_screen/detai_screen.dart' as _i13;
import 'package:tulips/ui/facial_screen/facial_screen.dart' as _i10;
import 'package:tulips/ui/home_screen/cat.dart' as _i15;
import 'package:tulips/ui/home_screen/home_screen.dart' as _i9;
import 'package:tulips/ui/offer_page/offer_page.dart' as _i12;
import 'package:tulips/ui/onboard_screen/onboard_screen.dart' as _i3;
import 'package:tulips/ui/otp_screen/otp_screen.dart' as _i7;
import 'package:tulips/ui/profie/profile_one_screen.dart' as _i11;
import 'package:tulips/ui/sign_in_screen/sign_in_screen.dart' as _i4;
import 'package:tulips/ui/sign_up_screen/sign_up_screen.dart' as _i6;
import 'package:tulips/ui/splash_screen/splash_view.dart' as _i2;

class Routes {
  static const splashView = '/';

  static const onboardScreen = '/onboard-screen';

  static const signInScreen = '/sign-in-screen';

  static const appNavigationScreen = '/app-navigation-screen';

  static const signUpScreen = '/sign-up-screen';

  static const otpScreen = '/otp-screen';

  static const dashBoardScreen = '/dash-board-screen';

  static const homeScreen = '/home-screen';

  static const facialScreen = '/facial-screen';

  static const profileScreen = '/profile-screen';

  static const offerPage = '/offer-page';

  static const detailsScreen = '/details-screen';

  static const all = <String>{
    splashView,
    onboardScreen,
    signInScreen,
    appNavigationScreen,
    signUpScreen,
    otpScreen,
    dashBoardScreen,
    homeScreen,
    facialScreen,
    profileScreen,
    offerPage,
    detailsScreen,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.splashView,
      page: _i2.SplashView,
    ),
    _i1.RouteDef(
      Routes.onboardScreen,
      page: _i3.OnboardScreen,
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
      Routes.signUpScreen,
      page: _i6.SignUpScreen,
    ),
    _i1.RouteDef(
      Routes.otpScreen,
      page: _i7.OtpScreen,
    ),
    _i1.RouteDef(
      Routes.dashBoardScreen,
      page: _i8.DashBoardScreen,
    ),
    _i1.RouteDef(
      Routes.homeScreen,
      page: _i9.HomeScreen,
    ),
    _i1.RouteDef(
      Routes.facialScreen,
      page: _i10.FacialScreen,
    ),
    _i1.RouteDef(
      Routes.profileScreen,
      page: _i11.ProfileScreen,
    ),
    _i1.RouteDef(
      Routes.offerPage,
      page: _i12.OfferPage,
    ),
    _i1.RouteDef(
      Routes.detailsScreen,
      page: _i13.DetailsScreen,
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
    _i3.OnboardScreen: (data) {
      final args = data.getArgs<OnboardScreenArguments>(
        orElse: () => const OnboardScreenArguments(),
      );
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => _i3.OnboardScreen(key: args.key),
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
    _i6.SignUpScreen: (data) {
      final args = data.getArgs<SignUpScreenArguments>(nullOk: false);
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i6.SignUpScreen(key: args.key, phone: args.phone),
        settings: data,
      );
    },
    _i7.OtpScreen: (data) {
      final args = data.getArgs<OtpScreenArguments>(nullOk: false);
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => _i7.OtpScreen(key: args.key, phone: args.phone),
        settings: data,
      );
    },
    _i8.DashBoardScreen: (data) {
      final args = data.getArgs<DashBoardScreenArguments>(
        orElse: () => const DashBoardScreenArguments(),
      );
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => _i8.DashBoardScreen(key: args.key),
        settings: data,
      );
    },
    _i9.HomeScreen: (data) {
      final args = data.getArgs<HomeScreenArguments>(
        orElse: () => const HomeScreenArguments(),
      );
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => _i9.HomeScreen(key: args.key),
        settings: data,
      );
    },
    _i10.FacialScreen: (data) {
      final args = data.getArgs<FacialScreenArguments>(nullOk: false);
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i10.FacialScreen(key: args.key, catname: args.catname),
        settings: data,
      );
    },
    _i11.ProfileScreen: (data) {
      final args = data.getArgs<ProfileScreenArguments>(
        orElse: () => const ProfileScreenArguments(),
      );
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => _i11.ProfileScreen(key: args.key),
        settings: data,
      );
    },
    _i12.OfferPage: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.OfferPage(),
        settings: data,
      );
    },
    _i13.DetailsScreen: (data) {
      final args = data.getArgs<DetailsScreenArguments>(nullOk: false);
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i13.DetailsScreen(key: args.key, serviceModel: args.serviceModel),
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

class OnboardScreenArguments {
  const OnboardScreenArguments({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant OnboardScreenArguments other) {
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

class SignUpScreenArguments {
  const SignUpScreenArguments({
    this.key,
    required this.phone,
  });

  final _i14.Key? key;

  final String phone;

  @override
  String toString() {
    return '{"key": "$key", "phone": "$phone"}';
  }

  @override
  bool operator ==(covariant SignUpScreenArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.phone == phone;
  }

  @override
  int get hashCode {
    return key.hashCode ^ phone.hashCode;
  }
}

class OtpScreenArguments {
  const OtpScreenArguments({
    this.key,
    required this.phone,
  });

  final _i14.Key? key;

  final String phone;

  @override
  String toString() {
    return '{"key": "$key", "phone": "$phone"}';
  }

  @override
  bool operator ==(covariant OtpScreenArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.phone == phone;
  }

  @override
  int get hashCode {
    return key.hashCode ^ phone.hashCode;
  }
}

class DashBoardScreenArguments {
  const DashBoardScreenArguments({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant DashBoardScreenArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class HomeScreenArguments {
  const HomeScreenArguments({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant HomeScreenArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class FacialScreenArguments {
  const FacialScreenArguments({
    this.key,
    required this.catname,
  });

  final _i14.Key? key;

  final String catname;

  @override
  String toString() {
    return '{"key": "$key", "catname": "$catname"}';
  }

  @override
  bool operator ==(covariant FacialScreenArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.catname == catname;
  }

  @override
  int get hashCode {
    return key.hashCode ^ catname.hashCode;
  }
}

class ProfileScreenArguments {
  const ProfileScreenArguments({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant ProfileScreenArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class DetailsScreenArguments {
  const DetailsScreenArguments({
    this.key,
    required this.serviceModel,
  });

  final _i14.Key? key;

  final _i15.ServiceModel serviceModel;

  @override
  String toString() {
    return '{"key": "$key", "serviceModel": "$serviceModel"}';
  }

  @override
  bool operator ==(covariant DetailsScreenArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.serviceModel == serviceModel;
  }

  @override
  int get hashCode {
    return key.hashCode ^ serviceModel.hashCode;
  }
}

extension NavigatorStateExtension on _i16.NavigationService {
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

  Future<dynamic> navigateToOnboardScreen({
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.onboardScreen,
        arguments: OnboardScreenArguments(key: key),
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

  Future<dynamic> navigateToSignUpScreen({
    _i14.Key? key,
    required String phone,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.signUpScreen,
        arguments: SignUpScreenArguments(key: key, phone: phone),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOtpScreen({
    _i14.Key? key,
    required String phone,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.otpScreen,
        arguments: OtpScreenArguments(key: key, phone: phone),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDashBoardScreen({
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.dashBoardScreen,
        arguments: DashBoardScreenArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHomeScreen({
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.homeScreen,
        arguments: HomeScreenArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFacialScreen({
    _i14.Key? key,
    required String catname,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.facialScreen,
        arguments: FacialScreenArguments(key: key, catname: catname),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfileScreen({
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.profileScreen,
        arguments: ProfileScreenArguments(key: key),
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

  Future<dynamic> navigateToDetailsScreen({
    _i14.Key? key,
    required _i15.ServiceModel serviceModel,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.detailsScreen,
        arguments: DetailsScreenArguments(key: key, serviceModel: serviceModel),
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

  Future<dynamic> replaceWithOnboardScreen({
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.onboardScreen,
        arguments: OnboardScreenArguments(key: key),
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

  Future<dynamic> replaceWithSignUpScreen({
    _i14.Key? key,
    required String phone,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.signUpScreen,
        arguments: SignUpScreenArguments(key: key, phone: phone),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOtpScreen({
    _i14.Key? key,
    required String phone,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.otpScreen,
        arguments: OtpScreenArguments(key: key, phone: phone),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithDashBoardScreen({
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.dashBoardScreen,
        arguments: DashBoardScreenArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeScreen({
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.homeScreen,
        arguments: HomeScreenArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFacialScreen({
    _i14.Key? key,
    required String catname,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.facialScreen,
        arguments: FacialScreenArguments(key: key, catname: catname),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfileScreen({
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.profileScreen,
        arguments: ProfileScreenArguments(key: key),
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

  Future<dynamic> replaceWithDetailsScreen({
    _i14.Key? key,
    required _i15.ServiceModel serviceModel,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.detailsScreen,
        arguments: DetailsScreenArguments(key: key, serviceModel: serviceModel),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
