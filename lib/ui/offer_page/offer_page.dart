import 'package:tulips/widgets/app_bar/custom_app_bar.dart';
import 'package:tulips/widgets/app_bar/appbar_title.dart';
import 'widgets/offer_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:tulips/core/app_export.dart';

// ignore_for_file: must_be_immutable
class OfferPage extends StatelessWidget {
  const OfferPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlueGray,
          child: Column(
            children: [
              SizedBox(height: 4.v),
              _buildOffer(context),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "Explore offers",
        margin: EdgeInsets.only(left: 24.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildOffer(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 1.v,
          );
        },
        itemCount: 6,
        itemBuilder: (context, index) {
          return OfferItemWidget();
        },
      ),
    );
  }
}
