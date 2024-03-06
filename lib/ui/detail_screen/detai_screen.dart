import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';

import 'package:flutter/material.dart';
import 'package:tulips/core/app_export.dart';
import 'package:tulips/ui/home_screen/cat.dart';
import 'package:tulips/widgets/custom_elevated_button.dart';
import 'package:tulips/widgets/custom_search_view.dart';
import 'package:tulips/widgets/custom_search_view.dart';

import 'package:tulips/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:tulips/core/app_export.dart';

import 'detaill_screen_viewModel.dart';

class DetailsScreen extends StatelessWidget {
  late ServiceModel serviceModel;
  DetailsScreen({Key? key, required this.serviceModel});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DetailsScreenViewModel>.reactive(
        viewModelBuilder: () => DetailsScreenViewModel(),
        onViewModelReady: (model) {
          model.updateitem(serviceModel);
        },
        builder: (context, model, child) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                title: Text("${model.serviceModel.name}"),
                elevation: 5,
              ),
              resizeToAvoidBottomInset: false,
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    // Padding(
                    // padding: EdgeInsets.symmetric(horizontal: 16.h),
SizedBox(height: 10,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16.h),
                      padding: EdgeInsets.all(3.h),
                      decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder3,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 300,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage( model.serviceModel.url),
                                fit: BoxFit.cover
                              ),
                              border: Border.all(width: 1),
                              borderRadius: BorderRadius.circular(10)

                            ),


                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 11.h),
                            child: Row(
                              children: [

                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 7.h,
                                    top: 13.v,
                                    bottom: 13.v,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${model.serviceModel.name}",
                                        style: theme.textTheme.titleMedium,
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 2.v),
                                            child: _buildTwo(
                                              context,
                                              price:
                                                  "₹${model.serviceModel.price}",
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 6.h),
                                            child: RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "₹",
                                                    style: CustomTextStyles
                                                        .titleMediumff444444,
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        "${model.serviceModel.discountprice}",
                                                    style: CustomTextStyles
                                                        .titleMediumff444444,
                                                  ),
                                                ],
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 23.v,
                                    bottom: 21.v,
                                  ),
                                  child: Text(
                                    ">",
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                SizedBox(height: 7.v),
                                Container(
                                  width: 305.h,
                                  margin: EdgeInsets.only(
                                    left: 1.h,
                                    right: 15.h,
                                  ),
                                  child: Text(
                                    "${model.serviceModel.discription}",
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        CustomTextStyles.labelMediumGray80001,
                                  ),
                                ),
                                SizedBox(height: 8.v),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 1.h,
                                    right: 2.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 1.v),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                "Ideal Skin Type",
                                                style:
                                                    theme.textTheme.labelMedium,
                                              ),
                                            ),
                                            SizedBox(height: 3.v),
                                            SizedBox(
                                              width: 71.h,
                                              child: Text(
                                                "${model.serviceModel.idealfor}",
                                                maxLines: 5,
                                                overflow: TextOverflow.ellipsis,
                                                style:
                                                    theme.textTheme.labelSmall,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 32.v),
                                        child: Column(
                                          children: [
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(right: 3.h),
                                                child: Text(
                                                  "Duration:${model.serviceModel.Duration}",
                                                  style: theme
                                                      .textTheme.labelMedium,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 5.v),
                                            SizedBox(
                                              width: 220.h,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  CustomElevatedButton(
                                                    height: 35.v,
                                                    width: 106.h,
                                                    text: "Whatsapp",
                                                    onPressed: (){
                                                      model.launchWhatsApp();
                                                    },
                                                    leftIcon: Container(
                                                      margin: EdgeInsets.only(
                                                          right: 1.h),
                                                      child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgLogoswhatsappicon,
                                                        height: 15.adaptSize,
                                                        width: 15.adaptSize,
                                                      ),
                                                    ),
                                                    buttonStyle:
                                                        CustomButtonStyles
                                                            .fillWhiteA,
                                                    buttonTextStyle:
                                                        CustomTextStyles
                                                            .labelMediumInterGreen400,
                                                  ),
                                                  CustomElevatedButton(
                                                    onPressed: (){
                                                      model.launchPhoneDialer();
                                                    },
                                                    height: 35.v,
                                                    width: 106.h,
                                                    text: "Call Now",
                                                    leftIcon: Container(
                                                      margin: EdgeInsets.only(
                                                          right: 1.h),
                                                      child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgFluentcall24filled,
                                                        height: 15.adaptSize,
                                                        width: 15.adaptSize,
                                                      ),
                                                    ),
                                                    buttonStyle:
                                                        CustomButtonStyles
                                                            .fillPrimary,
                                                    buttonTextStyle:
                                                        CustomTextStyles
                                                            .labelMediumInterWhiteA700,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 8.v),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  /// Common widget
  Widget _buildTwo(
    BuildContext context, {
    required String price,
  }) {
    return SizedBox(
      height: 18.v,
      width: 47.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              price,
              style: CustomTextStyles.labelLargePoppinsGray70001.copyWith(
                color: appTheme.gray70001,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVector1,
            height: 1.v,
            width: 47.h,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 7.v),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSixtyFour(
    BuildContext context, {
    required String price,
    required String price1,
  }) {
    return Row(
      children: [
        Container(
          height: 18.v,
          width: 47.h,
          margin: EdgeInsets.only(bottom: 2.v),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  price,
                  style: CustomTextStyles.labelLargePoppinsGray70001.copyWith(
                    color: appTheme.gray70001,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVector1,
                height: 1.v,
                width: 47.h,
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 7.v),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "₹",
                  style: CustomTextStyles.titleMediumff444444,
                ),
                TextSpan(
                  text: "4200",
                  style: CustomTextStyles.titleMediumff444444,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
