
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tulips/ui/app_navigation_screen/app_navigation_screen.dart';
import 'package:tulips/ui/facial_screen/facial_screen.dart';
import 'package:tulips/ui/home_container_screen/home_conatiner_View_Model.dart';
import 'package:tulips/ui/home_container_screen/home_container_screen.dart';
import 'package:tulips/ui/home_one_screen/home_one_screen.dart';
import 'package:tulips/ui/home_page/home_page.dart';
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
    MaterialRoute(page: OnboardView ),
    MaterialRoute(page: SignInScreen ),
    MaterialRoute(page: AppNavigationScreen ),
    MaterialRoute(page: HomeContainerScreen ),
    MaterialRoute(page: SignUpScreen ),
    MaterialRoute(page: OtpScreen ),
    MaterialRoute(page: HomePage ),
    MaterialRoute(page: HomeOneScreen ),
    MaterialRoute(page: FacialScreen ),
    MaterialRoute(page: ProfileOneScreen ),
    MaterialRoute(page: OfferPage ),
  ],
  dependencies: [
    //LazySingleton(classType: ApiService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),


  ],
)
class AppSetup {}
