import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tulips/core/app_export.dart';
import 'package:tulips/ui/home_container_screen/home_conatiner_View_Model.dart';
import 'package:tulips/ui/home_page/home_page.dart';
import 'package:tulips/widgets/custom_bottom_bar.dart';

import '../../app/app.router.dart';
class HomeContainerScreen extends StatelessWidget {
  HomeContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeContainerScreenViewModel>.reactive(

        viewModelBuilder: () => HomeContainerScreenViewModel(),
        onViewModelReady: (model) {

        },
        builder: (context, model, child) {
          return SafeArea(
              child: Scaffold(
                  body: Navigator(
                      key: navigatorKey,
                      initialRoute: Routes.homePage,
                      onGenerateRoute: (routeSetting) =>
                          PageRouteBuilder(
                              pageBuilder: (ctx, ani, ani1) =>
                                  getCurrentPage(routeSetting.name!),
                              transitionDuration: Duration(seconds: 0))),
                  bottomNavigationBar: CustomBottomBar(
                      onChanged: (BottomBarEnum type) {
                        Navigator.pushNamed(navigatorKey.currentContext!,
                            getCurrentRoute(type));
                      })));
        });
  }


  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
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