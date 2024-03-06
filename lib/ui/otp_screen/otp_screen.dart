import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tulips/core/app_export.dart';
import 'package:tulips/ui/otp_screen/otp_screen_viewModel.dart';
import 'package:tulips/widgets/custom_elevated_button.dart';
import 'package:tulips/widgets/custom_pin_code_text_field.dart';

import '../../app/app.router.dart';
import 'package:tulips/widgets/custom_elevated_button.dart';
import 'package:tulips/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:tulips/core/app_export.dart';

class OtpScreen extends StatelessWidget {
  String phone;
   OtpScreen({Key? key,required this.phone}
  );

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OtpScreenViewModel>.reactive(

        viewModelBuilder: () => OtpScreenViewModel(),
        onViewModelReady: (model) {

        },
        builder: (context, model, child) { return SafeArea(
    child: Scaffold(
    resizeToAvoidBottomInset: false,
    body: SizedBox(
    width: double.maxFinite,
    child: SingleChildScrollView(
    child: SizedBox(
    height: SizeUtils.height,
    width: double.maxFinite,
    child: Stack(
    alignment: Alignment.bottomCenter,
    children: [
    Align(
    alignment: Alignment.topCenter,
    child: SizedBox(
    height: 472.v,
    width: double.maxFinite,
    child: Stack(
    alignment: Alignment.topLeft,
    children: [
    Opacity(
    opacity: 0.43,
    child: CustomImageView(
    imagePath: ImageConstant.imgGetpaidstock1,
    height: 472.v,
    width: 360.h,
    alignment: Alignment.center,
    ),
    ),
    Opacity(
    opacity: 0.3,
    child: CustomImageView(
    imagePath: ImageConstant.imgLogo,
    height: 40.v,
    width: 47.h,
    alignment: Alignment.topLeft,
    margin: EdgeInsets.only(
    left: 16.h,
    top: 24.v,
    ),
    ),
    ),
    ],
    ),
    ),
    ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            right: 16.h,
            bottom: 132.v,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 321.h,
                margin: EdgeInsets.only(right: 7.h),
                child: Text(
                  "Step into a world of seamless elegance and effortless scheduling as you embark on a journey to pamper yourself with our beautician booking application.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallBluegray90001,
                ),
              ),
              SizedBox(height: 52.v),
              CustomElevatedButton(
                text: "Next",
              ),
            ],
          ),
        ),
      ),
    Align(
    alignment: Alignment.bottomLeft,
    child: Container(
    width: 284.h,
    margin: EdgeInsets.only(
    left: 16.h,
    bottom: 289.v,
    ),
    child: Text(
    "Where Beauty Meets Convenience – Your Next Appointment Awaits",
    maxLines: 3,
    overflow: TextOverflow.ellipsis,
    style: theme.textTheme.titleLarge,
    ),
    ),
    ),
    Align(
    alignment: Alignment.bottomCenter,
    child: Container(
    margin: EdgeInsets.only(right: 3.h),
    padding: EdgeInsets.symmetric(
    horizontal: 13.h,
    vertical: 57.v,
    ),
    decoration: AppDecoration.outlineBlack9001.copyWith(
    borderRadius: BorderRadiusStyle.customBorderTL50,
    ),
    child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
    Align(
    alignment: Alignment.centerLeft,
    child: Padding(
    padding: EdgeInsets.only(left: 4.h),
    child: Text(
    "Seal the Beauty Deal",
    style: theme.textTheme.titleLarge,
    ),
    ),
    ),
    SizedBox(height: 2.v),
    Container(
    width: 321.h,
    margin: EdgeInsets.only(
    left: 3.h,
    right: 7.h,
    ),
    child: Text(
    "Enter the secret code (OTP) sent to your inbox, and let the magic unfold as your beauty journey takes its next radiant step.\"",
    maxLines: 3,
    overflow: TextOverflow.ellipsis,
    style: CustomTextStyles.bodySmallBluegray90001,
    ),
    ),
    SizedBox(height: 51.v),
    Padding(
    padding: EdgeInsets.only(
    left: 23.h,
    right: 20.h,
    ),
    child: CustomPinCodeTextField(
    context: context,
    onChanged: (value) {},
    ),
    ),
    SizedBox(height: 51.v),
    CustomElevatedButton(
    text: "Let’s Verify",
      onPressed: (){
      model.nav();
      },
    ),
    SizedBox(height: 51.v),
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
    );
    });
  }




}



