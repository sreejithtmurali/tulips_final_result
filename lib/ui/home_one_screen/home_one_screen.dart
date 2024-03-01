import '../../app/app.router.dart';
import '../home_one_screen/widgets/servicelist1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:tulips/core/app_export.dart';
import 'package:tulips/ui/home_page/home_page.dart';
import 'package:tulips/widgets/custom_bottom_bar.dart';
import 'package:tulips/widgets/custom_elevated_button.dart';
import 'package:tulips/widgets/custom_search_view.dart';

class HomeOneScreen extends StatelessWidget {
  HomeOneScreen({Key? key}) : super(key: key,);

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(
                height: 130    ,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 106    ,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle2,
                      height: 106    ,
                      width: 358    ,
                      alignment: Alignment.topCenter,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: CustomSearchView(
                        width: 328    ,
                        controller: searchController,
                        hintText: "Search beauty services like spa facial...",
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(bottom: 98    ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 17    ,
                          vertical: 6    ,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgSettings,
                              height: 8    ,
                              width: 30    ,
                              margin: EdgeInsets.symmetric(vertical: 4    ),
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
                              margin: EdgeInsets.only(left: 3    ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgBattery,
                              height: 18.adaptSize,
                              width: 18.adaptSize,
                              margin: EdgeInsets.only(left: 3    ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 36    ),
              SizedBox(
                height: 100    ,
                child: ListView.separated(
                  padding: EdgeInsets.only(left: 16    ),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                      context,
                      index,
                      ) {
                    return SizedBox(
                      width: 16    ,
                    );
                  },
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return Servicelist1ItemWidget();
                  },
                ),
              ),
              SizedBox(height: 11    ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16    ),
                  child: Text(
                    "What we offer",
                    style: CustomTextStyles.titleMediumBluegray900,
                  ),
                ),
              ),
              SizedBox(height: 10    ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16    ),
                padding: EdgeInsets.symmetric(
                  horizontal: 16    ,
                  vertical: 12    ,
                ),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder24,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 3    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle7,
                      height: 304    ,
                      width: 296    ,
                      radius: BorderRadius.circular(
                        10    ,
                      ),
                    ),
                    SizedBox(height: 15    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Classic facial",
                              style: CustomTextStyles.titleMediumInterOnPrimaryContainer,
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "₹",
                                    style: CustomTextStyles.titleMediumff252626,
                                  ),
                                  TextSpan(
                                    text: "650",
                                    style: CustomTextStyles.titleMediumff252626,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        CustomElevatedButton(
                          width: 97    ,
                          text: "View more",
                          margin: EdgeInsets.only(bottom: 4    ),
                          buttonStyle: CustomButtonStyles.fillPurpleA,
                          buttonTextStyle: CustomTextStyles.labelLargePrimary,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5    ),
            ],
          ),
        ),
        bottomNavigationBar:CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
  }



  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum    ome:
        return Routes.homePage;
      case BottomBarEnum.Offer:
        return "/";
      case BottomBarEnum.Contact:
        return "/";
      case BottomBarEnum.Account:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case Routes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }
}
