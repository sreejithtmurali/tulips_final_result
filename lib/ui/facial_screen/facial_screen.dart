import 'package:stacked/stacked.dart';
import 'package:tulips/ui/facial_screen/facial_screen_viewModel.dart';

import '../facial_screen/widgets/frameeighteenlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:tulips/core/app_export.dart';
import 'package:tulips/widgets/custom_elevated_button.dart';
import 'package:tulips/widgets/custom_search_view.dart';

class FacialScreen extends StatelessWidget {
  FacialScreen({Key? key})
      : super(
          key: key,
        );



  @override
  Widget build(BuildContext context) {


    return ViewModelBuilder<FacialScreenViewModel>.reactive(

        viewModelBuilder: () => FacialScreenViewModel(),
        onViewModelReady: (model) {

        },
        builder: (context, model, child) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50   ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16   ),
                  child: CustomSearchView(
                    controller: model.searchController,
                    hintText: "Search ",
                  ),
                ),
                SizedBox(height: 36   ),
                SizedBox(
                  height: 100   ,
                  child: ListView.separated(
                    padding: EdgeInsets.only(left: 16   ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (
                        context,
                        index,
                        ) {
                      return SizedBox(
                        width: 16   ,
                      );
                    },
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return FrameeighteenlistItemWidget();
                    },
                  ),
                ),
                SizedBox(height: 47   ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16   ),
                  padding: EdgeInsets.all(3   ),
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder3,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 11   ),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle769x66,
                              height: 69   ,
                              width: 66   ,
                              radius: BorderRadius.circular(
                                2   ,
                              ),
                            ),
                            Container(
                              height: 42   ,
                              width: 180   ,
                              margin: EdgeInsets.only(
                                left: 7   ,
                                top: 13   ,
                                bottom: 13   ,
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 2   ),
                                    child: _buildTwo(
                                      context,
                                      priceText: "₹5600",
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                      height: 42   ,
                                      width: 180   ,
                                      child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                              padding: EdgeInsets.only(left: 53   ),
                                              child: RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: "₹",
                                                      style: CustomTextStyles
                                                          .titleMediumff444444,
                                                    ),
                                                    TextSpan(
                                                      text: "2500",
                                                      style: CustomTextStyles
                                                          .titleMediumff444444,
                                                    ),
                                                  ],
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: Text(
                                              "Deep Cleansing Facial",
                                              style: theme.textTheme.titleMedium,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 23   ,
                                bottom: 21   ,
                              ),
                              child: Text(
                                ">",
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 7   ),
                      Container(
                        width: 305   ,
                        margin: EdgeInsets.only(
                          left: 1   ,
                          right: 15   ,
                        ),
                        child: Text(
                          "A Deep Cleansing Facial is a professional skincare treatment designed to thoroughly cleanse the skin, unclog pores, and remove impurities, excess oil, and dead skin cells.",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.labelMediumGray80001,
                        ),
                      ),
                      SizedBox(height: 8   ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 1   ,
                          right: 2   ,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 1   ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Ideal Skin Type",
                                      style: theme.textTheme.labelMedium,
                                    ),
                                  ),
                                  SizedBox(height: 3   ),
                                  SizedBox(
                                    width: 71   ,
                                    child: Text(
                                      "Oily Skin\nAcne-Prone Skin\nCombination Skin\nCongested Skin\nNormal Skin",
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.labelSmall,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 32   ),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 3   ),
                                      child: Text(
                                        "Take up to 45 min",
                                        style: theme.textTheme.labelMedium,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5   ),
                                  SizedBox(
                                    width: 153   ,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomElevatedButton(
                                          height: 28   ,
                                          width: 78   ,
                                          text: "Whatsapp",
                                          leftIcon: Container(
                                            margin: EdgeInsets.only(right: 1   ),
                                            child: CustomImageView(
                                              imagePath: ImageConstant.imgLogoswhatsappicon,
                                              height: 15.adaptSize,
                                              width: 15.adaptSize,
                                            ),
                                          ),
                                          buttonStyle: CustomButtonStyles.fillWhiteA,
                                          buttonTextStyle:
                                          CustomTextStyles.labelMediumInterGreen400,
                                        ),
                                        CustomElevatedButton(
                                          height: 28   ,
                                          width: 70   ,
                                          text: "Call Now",
                                          leftIcon: Container(
                                            margin: EdgeInsets.only(right: 1   ),
                                            child: CustomImageView(
                                              imagePath:
                                              ImageConstant.imgFluentcall24filled,
                                              height: 15.adaptSize,
                                              width: 15.adaptSize,
                                            ),
                                          ),
                                          buttonStyle: CustomButtonStyles.fillPrimaryTL14,
                                          buttonTextStyle:
                                          CustomTextStyles.labelMediumInterWhiteA70001,
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
                      SizedBox(height: 8   ),
                    ],
                  ),
                ),
                SizedBox(height: 8   ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16   ),
                  padding: EdgeInsets.all(3   ),
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder3,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle13,
                        height: 69   ,
                        width: 66   ,
                        radius: BorderRadius.circular(
                          2   ,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 7   ,
                          top: 13   ,
                          bottom: 13   ,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hydrating Facial",
                              style: theme.textTheme.titleMedium,
                            ),
                            _buildAntiAgingFacialRow(
                              context,
                              priceText: "₹5600",
                              priceText1: "₹4200",
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 23   ,
                          right: 16   ,
                          bottom: 21   ,
                        ),
                        child: Text(
                          ">",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8   ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16   ),
                  padding: EdgeInsets.all(3   ),
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder3,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle15,
                        height: 69   ,
                        width: 66   ,
                        radius: BorderRadius.circular(
                          2   ,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 7   ,
                          top: 13   ,
                          bottom: 13   ,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Anti aging Facial",
                              style: theme.textTheme.titleMedium,
                            ),
                            _buildAntiAgingFacialRow(
                              context,
                              priceText: "₹5600",
                              priceText1: "₹4200",
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 23   ,
                          right: 16   ,
                          bottom: 21   ,
                        ),
                        child: Text(
                          ">",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8   ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16   ),
                  padding: EdgeInsets.all(3   ),
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder3,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle17,
                        height: 69   ,
                        width: 66   ,
                        radius: BorderRadius.circular(
                          2   ,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 7   ,
                          top: 13   ,
                          bottom: 13   ,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Brightening Facial",
                              style: theme.textTheme.titleMedium,
                            ),
                            _buildAntiAgingFacialRow(
                              context,
                              priceText: "₹5600",
                              priceText1: "₹4200",
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 23   ,
                          right: 16   ,
                          bottom: 21   ,
                        ),
                        child: Text(
                          ">",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8   ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16   ),
                  padding: EdgeInsets.all(3   ),
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder3,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle19,
                        height: 69   ,
                        width: 66   ,
                        radius: BorderRadius.circular(
                          2   ,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 7   ,
                          top: 12   ,
                          bottom: 12   ,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Acne Facial",
                              style: theme.textTheme.titleMedium,
                            ),
                            _buildAntiAgingFacialRow(
                              context,
                              priceText: "₹5600",
                              priceText1: "₹4200",
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 23   ,
                          right: 10   ,
                          bottom: 22   ,
                        ),
                        child: Text(
                          ">",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8   ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16   ),
                  padding: EdgeInsets.all(3   ),
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder3,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle21,
                        height: 69   ,
                        width: 66   ,
                        radius: BorderRadius.circular(
                          2   ,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 7   ,
                          top: 12   ,
                          bottom: 12   ,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sensitive Skin Facial",
                              style: theme.textTheme.titleMedium,
                            ),
                            _buildAntiAgingFacialRow(
                              context,
                              priceText: "₹5600",
                              priceText1: "₹4200",
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 23   ,
                          right: 10   ,
                          bottom: 22   ,
                        ),
                        child: Text(
                          ">",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );});




  }









  /// Common widget
  Widget _buildTwo(
    BuildContext context, {
    required String priceText,
  }) {
    return SizedBox(
      height: 18   ,
      width: 47   ,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              priceText,
              style: CustomTextStyles.labelLargePoppinsGray700.copyWith(
                color: appTheme.gray700,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVector1,
            height: 1   ,
            width: 47   ,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 7   ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildAntiAgingFacialRow(
    BuildContext context, {
    required String priceText,
    required String priceText1,
  }) {
    return Row(
      children: [
        Container(
          height: 18   ,
          width: 47   ,
          margin: EdgeInsets.only(bottom: 2   ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  priceText,
                  style: CustomTextStyles.labelLargePoppinsGray700.copyWith(
                    color: appTheme.gray700,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVector1,
                height: 1   ,
                width: 47   ,
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 7   ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 6   ),
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
