import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:tulips/app/app.router.dart';
import 'package:tulips/app/utils.dart';

class SignInScreenViewModel extends BaseViewModel{
  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91');

  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void nav(){
    if(formKey.currentState!.validate())
    navigationService.navigateTo(Routes.otpScreen,arguments: OtpScreenArguments(phone: phoneNumberController.text));

  }
}