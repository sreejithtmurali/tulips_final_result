import 'package:tulips/ui/offer_page/offer_page.dart';
import 'package:tulips/widgets/custom_elevated_button.dart';
import 'package:tulips/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:tulips/core/app_export.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

import '../../routes/app_routes.dart';

class ContactScreen extends StatelessWidget {
  ContactScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  launchWhatsApp() async {
    final link = WhatsAppUnilink(
      phoneNumber: '+91-8111821149',
      text: "Hey! I'm inquiring about the Service listing",
    );
    await launchUrlString('$link');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10001,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLayer1,
                height: 328.v,
                width: 360.h,
              ),
              SizedBox(height: 50.v),
              Container(
                width: 319.h,
                margin: EdgeInsets.only(
                  left: 17.h,
                  right: 24.h,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "We greatly value your feedback and suggestions for improving TULIPS App. Please share your thoughts with us at ",
                        style: CustomTextStyles.titleSmallff474747,
                      ),
                      TextSpan(
                        text:
                            "feedback@tulipsapp.com. Your input helps us enhance our services to better meet your needs. ",
                        style: CustomTextStyles.titleSmallff5b0888,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 7.v),
              Text(
                "or",
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 30.v),
              CustomElevatedButton(
                text: "Whatsapp",
                onPressed: launchWhatsApp,
                margin: EdgeInsets.symmetric(horizontal: 16.h),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 1.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgLogoswhatsappicon,
                    height: 15.adaptSize,
                    width: 15.adaptSize,
                  ),
                ),
                buttonStyle: CustomButtonStyles.fillGreen,
                buttonTextStyle: CustomTextStyles.titleSmallInterGray100,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),

      ),
    );
  }

  /// Section Widget

}
