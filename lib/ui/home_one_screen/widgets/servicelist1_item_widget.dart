import 'package:flutter/material.dart';
import 'package:tulips/core/app_export.dart';

// ignore: must_be_immutable
class Servicelist1ItemWidget extends StatelessWidget {
  const Servicelist1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 18.v),
        child: Column(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse1,
              height: 60.adaptSize,
              width: 60.adaptSize,
              radius: BorderRadius.circular(
                30.h,
              ),
            ),
            SizedBox(height: 3.v),
            Text(
              "Facial",
              style: CustomTextStyles.bodySmallPrimary,
            ),
          ],
        ),
      ),
    );
  }
}
