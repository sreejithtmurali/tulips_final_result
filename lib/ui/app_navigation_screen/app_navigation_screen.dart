import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:tulips/core/app_export.dart';

import '../../app/app.router.dart';
import '../sign_in_screen/sig_in_screen_viewModel.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignInScreenViewModel>.reactive(

        viewModelBuilder: () => SignInScreenViewModel(),
        onViewModelReady: (model) {

        },
        builder: (context, model, child) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375  ,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0XFFFFFFFF),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10 ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20  ),
                        child: Text(
                          "App Navigation",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0XFF000000),
                            fontSize: 20.fSize,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10 ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20  ),
                        child: Text(
                          "Check your app's UI from the below demo screens of your app.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0XFF888888),
                            fontSize: 16.fSize,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5 ),
                    Divider(
                      height: 1 ,
                      thickness: 1 ,
                      color: Color(0XFF000000),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, Routes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, Routes.splashView),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, Routes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Facial",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, Routes.facialScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, Routes.homeOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboard",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, Routes.onboardView),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign in",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, Routes.signInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "OTP",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, Routes.otpScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );});
  }



  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10 ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20  ),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10 ),
            SizedBox(height: 5 ),
            Divider(
              height: 1 ,
              thickness: 1 ,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
