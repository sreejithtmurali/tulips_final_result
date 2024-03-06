import 'package:stacked/stacked.dart';
import 'package:tulips/ui/offer_page/offer_page_view_model.dart';
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
    return ViewModelBuilder<OfferpageViewModel>.reactive(
        viewModelBuilder: () => OfferpageViewModel(),
        onViewModelReady: (model) {
          model.fetchDataFromFirebase2();
        },
        builder: (context, model, child) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10001,
        appBar: CustomAppBar(
          title: AppbarTitle(
            text: "Explore offers",
            margin: EdgeInsets.only(left: 24.h),
          ),
        ),
        body:  ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (
                      context,
                      index,
                      ) {
                    return SizedBox(
                      height: 1.v,
                    );
                  },
                  itemCount: model.servicelist.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        model.navdetails(model.servicelist[index]);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
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
                                              imagePath: model.servicelist[index].url,
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
                                                  "${model.servicelist[index].discountpersent}%",
                                                  style: CustomTextStyles.labelLargeBluegray50,
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
                                      "${model.servicelist[index].name}",
                                      style: CustomTextStyles.titleMediumInterOnPrimaryContainer,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 3.v),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "₹",
                                            style: CustomTextStyles.titleLargeff252626,
                                          ),
                                          TextSpan(
                                            text: "${model.servicelist[index].discountprice}",
                                            style: CustomTextStyles.titleLargeff252626,
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
                        ),
                      ),
                    );
                  },
                ),
              ),


    );});
  }

  /// Section Widget



}
