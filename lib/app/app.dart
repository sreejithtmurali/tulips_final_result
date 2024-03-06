
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tulips/ui/app_navigation_screen/app_navigation_screen.dart';
import 'package:tulips/ui/dashboard_screen/dashboard_screen.dart';
import 'package:tulips/ui/detail_screen/detai_screen.dart';
import 'package:tulips/ui/facial_screen/facial_screen.dart';

import 'package:tulips/ui/home_screen/home_screen.dart';
import 'package:tulips/ui/offer_page/offer_page.dart';
import 'package:tulips/ui/otp_screen/otp_screen.dart';
import 'package:tulips/ui/profie/profile_one_screen.dart';
import 'package:tulips/ui/sign_in_screen/sign_in_screen.dart';

import '../ui/onboard_screen/onboard_screen.dart';
import '../ui/sign_up_screen/sign_up_screen.dart';
import '../ui/splash_screen/splash_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(page: OnboardScreen ),
    MaterialRoute(page: SignInScreen ),
    MaterialRoute(page: AppNavigationScreen ),
    MaterialRoute(page: SignUpScreen ),
    MaterialRoute(page: OtpScreen ),
    MaterialRoute(page: DashBoardScreen ),
    MaterialRoute(page: HomeScreen ),
    MaterialRoute(page: FacialScreen ),
    MaterialRoute(page: ProfileScreen ),
    MaterialRoute(page: OfferPage ),
    MaterialRoute(page: DetailsScreen ),
  ],
  dependencies: [
    //LazySingleton(classType: ApiService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),


  ],
)
class AppSetup {}
