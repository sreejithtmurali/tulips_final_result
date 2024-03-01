import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
//import 'package:tulips/app/app.router.dart';

import '../../app/app.router.dart';
import '../../app/utils.dart';


class SplashViewModel extends BaseViewModel {
  Timer? _timer;
  // final _apiService = locator<ApiService>();
  // final _notificationService = locator<NotificationService>();

  void startTimer() async {
    // AppUser? user = await _userService.loadCredential();
    // bool hasUser = user?.hasUser ?? false;

    _timer = Timer(const Duration(seconds: 3), () async {
      SharedPreferences prefs =await SharedPreferences.getInstance();
    var email=prefs.getString("email");

   // Navigate to home

    email==null? navigationService.pushNamedAndRemoveUntil(Routes.onboardView): navigationService.pushNamedAndRemoveUntil(Routes.homeContainerScreen);

    });

    // _notificationService.registerPushNotificationHandler();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  }
