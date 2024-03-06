import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:tulips/app/utils.dart';
import 'package:tulips/routes/app_routes.dart';
import 'package:tulips/ui/home_screen/home_screen.dart';

import '../../app/app.router.dart';
enum gender{male,female}
class SignUpScreenViewModel extends BaseViewModel{
  String phone="";
  gender sex=gender.male;
  void change(gender s){

      sex=s;
      notifyListeners();

  }
  void updateno(String no){
    phone=no;
    notifyListeners();
  }

  TextEditingController fullNameController = TextEditingController();
  TextEditingController dobctrler = TextEditingController();
  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Future<void> nav() async {
    if(formKey.currentState!.validate()){
      SharedPreferences pref =await SharedPreferences.getInstance();

        pref.setString("email", "${emailController.text}");
        pref.setString("name", "${fullNameController.text}");
        pref.setString("dob", "${dobctrler.text}");
        pref.setString("phone", "${phone}");
        if(sex==gender.male) {
          pref.setString("sex", "male");
        }else{

          pref.setString("sex", "female");
        }
        pref.commit();
      navigationService.pushNamedAndRemoveUntil(Routes.dashBoardScreen);

    }

  }
}