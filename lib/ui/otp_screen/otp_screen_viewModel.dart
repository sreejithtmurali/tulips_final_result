import 'package:stacked/stacked.dart';

import '../../app/app.router.dart';
import '../../app/utils.dart';

class OtpScreenViewModel extends BaseViewModel{
  String phone="";
  void updateno(String no){
    phone=no;
    notifyListeners();
  }
  void nav() {
    navigationService.navigateTo(
        Routes.signUpScreen, arguments: SignUpScreenArguments(phone: phone));
  }}