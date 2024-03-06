import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:tulips/ui/contact_screen/contact_screen.dart';
import 'package:tulips/ui/home_screen/home_screen.dart';
import 'package:tulips/ui/offer_page/offer_page.dart';
import 'package:tulips/ui/profie/profile_one_screen.dart';


class DashBoardScreenViewModel extends BaseViewModel{

  List<Widget>pages=[HomeScreen(),OfferPage(),ContactScreen(),ProfileScreen()];
  int current=0;
  void change (int i){
    current=i;
    notifyListeners();
  }

}