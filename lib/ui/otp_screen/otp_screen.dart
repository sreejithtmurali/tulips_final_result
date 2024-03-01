import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tulips/core/app_export.dart';
import 'package:tulips/ui/otp_screen/otp_screen_viewModel.dart';
import 'package:tulips/widgets/custom_elevated_button.dart';
import 'package:tulips/widgets/custom_pin_code_text_field.dart';

import '../../app/app.router.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OtpScreenViewModel>.reactive(

        viewModelBuilder: () => OtpScreenViewModel(),
    onViewModelReady: (model) {

    },
    builder: (context, model, child) {
    return SafeArea(
    child: Scaffold(
    resizeToAvoidBottomInset: false,
    body: SingleChildScrollView(
    child: SizedBox(
    width: double.maxFinite,
    child: SingleChildScrollView(
    child: SizedBox(
    height: SizeUtils.height,
    width: double.maxFinite,
    child: Stack(
    alignment: Alignment.topCenter,
    children: [
    Align(
    alignment: Alignment.topCenter,
    child: SizedBox(
    height: 472 ,
    width: double.maxFinite,
    child: Stack(
    alignment: Alignment.topLeft,
    children: [
    Opacity(
    opacity: 0.43,
    child: CustomImageView(
    imagePath: ImageConstant.imgGetpaidstock1,
    height: 472 ,
    width: 360 ,
    alignment: Alignment.center,
    ),
    ),
    Opacity(
    opacity: 0.3,
    child: CustomImageView(
    imagePath: ImageConstant.imgLogo,
    height: 40 ,
    width: 47 ,
    alignment: Alignment.topLeft,
    margin: EdgeInsets.only(
    left: 16 ,
    top: 24 ,
    ),
    ),
    ),
    ],
    ),
    ),
    ),
    Align(
    alignment: Alignment.topCenter,
    child: Container(
    width: double.maxFinite,
    margin: EdgeInsets.only(bottom: 768 ),
    padding: EdgeInsets.symmetric(
    horizontal: 17 ,
    vertical: 6 ,
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
    CustomImageView(
    imagePath: ImageConstant.imgUser,
    height: 8 ,
    width: 30 ,
    margin: EdgeInsets.symmetric(vertical: 4 ),
    ),
    Spacer(),
    CustomImageView(
    imagePath: ImageConstant.imgWifiBlack900,
    height: 18.adaptSize,
    width: 18.adaptSize,
    ),
    CustomImageView(
    imagePath: ImageConstant.imgSettingsBlack900,
    height: 18.adaptSize,
    width: 18.adaptSize,
    margin: EdgeInsets.only(left: 3 ),
    ),
    CustomImageView(
    imagePath: ImageConstant.imgBatteryBlack900,
    height: 18.adaptSize,
    width: 18.adaptSize,
    margin: EdgeInsets.only(left: 3 ),
    ),
    ],
    ),
    ),
    ),
    Align(
    alignment: Alignment.bottomCenter,
    child: SizedBox(
    height: 526 ,
    width: 357 ,
    child: Stack(
    alignment: Alignment.center,
    children: [
    Align(
    alignment: Alignment.center,
    child: Container(
    padding: EdgeInsets.symmetric(
    horizontal: 13 ,
    vertical: 57 ,
    ),
    decoration: AppDecoration.outlineBlack900.copyWith(
    borderRadius: BorderRadiusStyle.customBorderTL50,
    ),
    child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
    Align(
    alignment: Alignment.centerLeft,
    child: Padding(
    padding: EdgeInsets.only(left: 3 ),
    child: Text(
    "Seal the Beauty Deal",
    style: theme.textTheme.titleLarge,
    ),
    ),
    ),
    SizedBox(height: 2 ),
    Container(
    width: 321 ,
    margin: EdgeInsets.only(
    left: 3 ,
    right: 7 ,
    ),
    child: Text(
    "Enter the secret code (OTP) sent to your inbox, and let the magic unfold as your beauty journey takes its next radiant step.\"",
    maxLines: 3,
    overflow: TextOverflow.ellipsis,
    style: CustomTextStyles.bodySmallBluegray900,
    ),
    ),
    SizedBox(height: 51 ),
    Padding(
    padding: EdgeInsets.only(
    left: 23 ,
    right: 20 ,
    ),
    child: CustomPinCodeTextField(
    context: context,
    onChanged: (value) {},
    ),
    ),
    SizedBox(height: 51 ),
    CustomElevatedButton(
    text: "Let’s Verify",
    margin: EdgeInsets.only(left: 3 ),
    onPressed: (){
    Navigator.pushNamed(context, Routes.signUpScreen);
    },
    ),
    SizedBox(height: 51 ),
    ],
    ),
    ),
    ),
    Align(
    alignment: Alignment.center,
    child: Padding(
    padding: EdgeInsets.only(
    left: 16 ,
    right: 13 ,
    ),
    child: Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

    SizedBox(height: 9 ),

    SizedBox(height: 52 ),
    // CustomElevatedButton(
    //   text: "Next",
    // ),
    ],
    ),
    ),
    ),
    ],
    ),
    ),
    ),
    ],
    ),
    ),
    ),
    ),
    ),
    ),
    );
    });
  }


}
