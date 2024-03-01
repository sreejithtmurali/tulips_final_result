import 'package:stacked/stacked.dart';
import 'package:tulips/ui/facial_screen/facial_screen.dart';
import 'package:tulips/ui/home_page/home_page_view_model.dart';

import '../../app/app.router.dart';
import '../home_page/widgets/servicelist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:tulips/core/app_export.dart';
import 'package:tulips/widgets/custom_elevated_button.dart';
import 'package:tulips/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomePageViewModel>.reactive(
        viewModelBuilder: () => HomePageViewModel(),
        onViewModelReady: (model) {},
        builder: (context, model, child) {
          return SafeArea(
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: SingleChildScrollView(
                child: Container(
                  width: double.maxFinite,
                  decoration: AppDecoration.fillBlue,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 130.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: 106.v,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle2,
                              height: 106.v,
                              width: 358,
                              alignment: Alignment.topCenter,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: CustomSearchView(
                                width: 328,
                                controller: model.searchController,
                                hintText:
                                    "Search beauty services like spa facial...",
                                alignment: Alignment.bottomCenter,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                width: double.maxFinite,
                                margin: EdgeInsets.only(bottom: 98.v),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 17,
                                  vertical: 6.v,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgSettings,
                                      height: 8.v,
                                      width: 30,
                                      margin:
                                          EdgeInsets.symmetric(vertical: 4.v),
                                    ),
                                    Spacer(),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgWifi,
                                      height: 18.adaptSize,
                                      width: 18.adaptSize,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgFrame2109,
                                      height: 18.adaptSize,
                                      width: 18.adaptSize,
                                      margin: EdgeInsets.only(left: 3),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgBattery,
                                      height: 18.adaptSize,
                                      width: 18.adaptSize,
                                      margin: EdgeInsets.only(left: 3),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 36.v),
                      SizedBox(
                        height: 100.v,
                        child: ListView.separated(
                          padding: EdgeInsets.only(left: 16),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (
                            context,
                            index,
                          ) {
                            return SizedBox(
                              width: 16,
                            );
                          },
                          itemCount: 7,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, Routes.homeOneScreen);
                              },
                              child: SizedBox(
                                width: 60,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 18.v),
                                  child: Column(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgEllipse1,
                                        height: 60.adaptSize,
                                        width: 60.adaptSize,
                                        radius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),
                                      SizedBox(height: 3.v),
                                      Text(
                                        "Facial",
                                        style:
                                            CustomTextStyles.bodySmallPrimary,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 11.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            "What we offer",
                            style: CustomTextStyles.titleMediumBluegray900,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.v),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12.v,
                        ),
                        decoration: AppDecoration.fillBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder24,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 3.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle7,
                              height: 304.v,
                              width: 296,
                              radius: BorderRadius.circular(
                                10,
                              ),
                            ),
                            SizedBox(height: 15.v),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Classic facial",
                                      style: CustomTextStyles
                                          .titleMediumInterOnPrimaryContainer,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "₹",
                                            style: CustomTextStyles
                                                .titleMediumff252626,
                                          ),
                                          TextSpan(
                                            text: "650",
                                            style: CustomTextStyles
                                                .titleMediumff252626,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                                CustomElevatedButton(
                                  width: 97,
                                  text: "View more",
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                FacialScreen()));
                                  },
                                  margin: EdgeInsets.only(bottom: 4.v),
                                  buttonStyle: CustomButtonStyles.fillPurpleA,
                                  buttonTextStyle:
                                      CustomTextStyles.labelLargePrimary,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5.v),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
