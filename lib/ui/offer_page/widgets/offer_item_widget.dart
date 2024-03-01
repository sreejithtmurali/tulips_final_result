import 'package:flutter/material.dart';
import 'package:tulips/core/app_export.dart';

// ignore: must_be_immutable
class OfferItemWidget extends StatelessWidget {
  const OfferItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10.v),
          SizedBox(
            height: 134.v,
            width: 296.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle7,
                  height: 134.v,
                  width: 296.h,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 20.v,
                    width: 40.h,
                    margin: EdgeInsets.only(top: 13.v),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgTelevision,
                          height: 20.v,
                          width: 40.h,
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 2.v,
                              right: 3.h,
                            ),
                            child: Text(
                              "25%",
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 18.v),
                child: Text(
                  "Classic facial",
                  style: CustomTextStyles.titleMediumBluegray900,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 3.v),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "₹",
                        style: theme.textTheme.titleLarge,
                      ),
                      TextSpan(
                        text: "487",
                        style: theme.textTheme.titleLarge,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
