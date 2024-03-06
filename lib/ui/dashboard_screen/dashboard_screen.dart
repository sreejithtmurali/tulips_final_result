import 'package:stacked/stacked.dart';

import 'package:flutter/material.dart';
import 'package:tulips/core/app_export.dart';

import 'dashboardScreenViewModel.dart';

class DashBoardScreen extends StatelessWidget {
  DashBoardScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashBoardScreenViewModel>.reactive(
        viewModelBuilder: () => DashBoardScreenViewModel(),
        onViewModelReady: (model) {},
        builder: (context, model, child) {
    return SafeArea(
    child: Scaffold(
    resizeToAvoidBottomInset: false,
    body:model.pages[model.current],

    bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.offline_bolt),
              label: 'Offer',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Contact',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',

          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: model.current,

        selectedItemColor: Colors.purpleAccent,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        iconSize: 24,
        onTap: (int index){
          model.change(index);
        },
        elevation: 5
    )

    ),
    );
    });
  }





}
