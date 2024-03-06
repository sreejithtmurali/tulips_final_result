import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:tulips/app/app.router.dart';
import 'package:tulips/ui/onboard_screen/onboard_screen.dart';

import '../../app/utils.dart';

class ProfileScreenViewModel extends BaseViewModel{

  TextEditingController firstNameController = TextEditingController();

  TextEditingController dobctrlr = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  List<String> dropdownItemList = [
    "Male",
    "Female",
  ];
  int defaultindex=0;
  String name="",dob="",phone="",sex="",email="";
  Future<void> init() async {
    SharedPreferences pref =await SharedPreferences.getInstance();

   email=  pref.getString("email")!;
   name= pref.getString("name")!;

   dob= pref.getString("dob")!;


    phone=pref.getString("phone")!;

   sex= pref.getString("sex")!;
   if(sex=="male"){
     defaultindex=0;
   }
   else{
     defaultindex=1;
   }
   notifyListeners();
   update();
  }
  void update(){
    dobctrlr.text=dob;
    firstNameController.text=name;
    phoneNumberController.text=phone;
  }
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Future<void> logout() async {
    SharedPreferences pref =await SharedPreferences.getInstance();
    pref.clear();
    notifyListeners();
    navigationService.pushNamedAndRemoveUntil(Routes.onboardScreen);
  }
}