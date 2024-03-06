import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tulips/core/app_export.dart';
import 'package:stacked/stacked.dart';
import 'package:tulips/ui/splash_screen/splash_viewmodel.dart';
import '../../widgets/custom_image_view.dart';
class SplashView extends StatelessWidget {
  SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ViewModelBuilder<SplashViewModel>.reactive(

        viewModelBuilder: ()=>SplashViewModel(),
        onViewModelReady: (model){
          model.startTimer();
          print("timer");
        },
        builder:( context,model,child){

          return SafeArea(
            child: Scaffold(
              body: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    Spacer(),
                    SvgPicture.asset(
                      'assets/images/img_logo_primary.svg',
                      height: 97    ,
                      width: 116    ,
                    ),
                    SizedBox(height: 63    ),
                    Opacity(
                      opacity: 0.4,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgImage1,
                        height: 288 ,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}


