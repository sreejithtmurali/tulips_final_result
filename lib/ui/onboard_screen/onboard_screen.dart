import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:tulips/app/utils.dart';
import 'package:tulips/core/app_export.dart';

import 'package:tulips/widgets/custom_elevated_button.dart';
import 'package:tulips/widgets/custom_phone_number.dart';

import '../../app/app.router.dart';
import 'onboardviewModel.dart';

class OnboardScreen extends StatelessWidget {
  OnboardScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnboardViewModel>.reactive(
        viewModelBuilder: () => OnboardViewModel(),
        onViewModelReady: (model) {},
        builder: (context, model, child) {
          return SafeArea(
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: Form(
                key: model.formKey,
                child: SizedBox(
                  width: double.maxFinite,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 510,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  height: 472,
                                  width: double.maxFinite,
                                  child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      Opacity(
                                        opacity: 0.43,
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgGetpaidstock1,
                                          height: 472,
                                          width: 360,
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                      Opacity(
                                        opacity: 0.3,
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgLogo,
                                          height: 40,
                                          width: 47,
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(
                                            left: 16,
                                            top: 24,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  width: 284,
                                  margin: EdgeInsets.only(left: 16),
                                  child: Text(
                                    "Where Beauty Meets Convenience – Your Next Appointment Awaits",
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 9),
                        Container(
                          width: 321,
                          margin: EdgeInsets.only(
                            left: 16,
                            right: 23,
                          ),
                          child: Text(
                            "Step into a world of seamless elegance and effortless scheduling as you embark on a journey to pamper yourself with our beautician booking application.",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodySmallBluegray90001,
                          ),
                        ),
                        SizedBox(height: 52),
                        CustomElevatedButton(
                          text: "Next",
                          onPressed: model.nav,
                          margin: EdgeInsets.symmetric(horizontal: 16),
                        ),
                        SizedBox(height: 140),

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
