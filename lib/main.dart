import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/app.locator.dart';
import 'app/app.router.dart';
import 'app/size_utils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  await Firebase.initializeApp(
    options: FirebaseOptions(

        apiKey: "AIzaSyDBZZbqdnfJ3_z8B0mEinihYXKtzfZLChg",
        appId: "1:428245492316:android:59673c87786f019af77c99",
        messagingSenderId: "428245492316",
        projectId: "yuslih-cf83d",
        storageBucket:"yuslih-cf83d.appspot.com"

    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   Sizer(
      builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
        return MaterialApp(

          debugShowCheckedModeBanner: false,
          onGenerateRoute: StackedRouter().onGenerateRoute,
          navigatorKey: StackedService.navigatorKey,

        );
      },

    );
  }
}

