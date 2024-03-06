import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:tulips/ui/facial_screen/facial_screen_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:tulips/core/app_export.dart';
import 'package:tulips/widgets/custom_elevated_button.dart';
import 'package:tulips/widgets/custom_search_view.dart';
import 'package:tulips/widgets/custom_search_view.dart';
import 'widgets/facial_item_widget.dart';
import 'package:tulips/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:tulips/core/app_export.dart';

class FacialScreen extends StatelessWidget {
  late String catname;
  FacialScreen({Key? key,required this.catname}
  );




  @override
  Widget build(BuildContext context) {
   return ViewModelBuilder<FacialScreenViewModel>.reactive(

        viewModelBuilder: () => FacialScreenViewModel(),
        onViewModelReady: (model) {
model.updatecat(catname);
model.fetchDataFromFirebase();
        },
        builder: (context, model, child) {
    return SafeArea(
    child: Scaffold(
      appBar: AppBar(title: Text("${model.catname}"),elevation: 5,),
    resizeToAvoidBottomInset: false,
    body: SingleChildScrollView(
    child: Column(
    children: [

    // Padding(
    // padding: EdgeInsets.symmetric(horizontal: 16.h),
    // child: CustomSearchView(
    // controller: model.searchController,
    // hintText: "Search ",
    // ),
    // ),
    SizedBox(height: 36.v),

      SizedBox(
        height: 100,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 16),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
              context,
              index,
              ) {
            return SizedBox(
              width: 16,
            );
          },
          itemCount: model.catogorylist!.length,
          itemBuilder: (context, index) {
            return  InkWell(
              onTap: (){
                model.updatecat(model.catogorylist[index].catname);
              },
              child: SizedBox(
                width: 60,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 18),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: model.catogorylist![index].catname==model.catname?Colors.purpleAccent:Colors.grey,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage("${ model.catogorylist![index].url}"),
                          radius: 28,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "${model.catogorylist![index].catname}",
                        style: CustomTextStyles.bodySmallPrimary,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all( 16.0),
          child: Text(
            "What we offer",
            style: CustomTextStyles.titleMediumBluegray90001,
          ),
        ),
      ),
      SizedBox(
        height: 800,
        child: ListView.separated(itemCount: model.servicelist!.length, itemBuilder: (BuildContext context, int index) {
         return InkWell(
           onTap: (){
             model.navdetails(model.servicelist![index]);
           },
           child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16.h),
              padding: EdgeInsets.all(3.h),
              decoration: AppDecoration.outlineBlack.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder3,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomImageView(
                    imagePath: model.servicelist[index].url,
                    height: 69.v,
                    width: 66.h,
                    radius: BorderRadius.circular(
                      2.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 7.h,
                      top: 13.v,
                      bottom: 13.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${model.servicelist[index].name}",
                          style: theme.textTheme.titleMedium,
                        ),
                        _buildSixtyFour(
                          context,
                          price: "₹${model.servicelist[index].price}",
                          price1: "₹${model.servicelist[index].discountprice}",
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 23.v,
                      right: 16.h,
                      bottom: 21.v,
                    ),
                    child: Text(
                      ">",
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
            ),
         );
          // return Container(
          //   margin: EdgeInsets.symmetric(horizontal: 16.h),
          //   padding: EdgeInsets.all(3.h),
          //   decoration: AppDecoration.outlineBlack.copyWith(
          //     borderRadius: BorderRadiusStyle.roundedBorder3,
          //   ),
          //   child: Column(
          //     mainAxisSize: MainAxisSize.min,
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Padding(
          //         padding: EdgeInsets.only(right: 11.h),
          //         child: Row(
          //           children: [
          //             CustomImageView(
          //               imagePath: model.servicelist[index].url,
          //               height: 69.v,
          //               width: 66.h,
          //               radius: BorderRadius.circular(
          //                 2.h,
          //               ),
          //             ),
          //             Padding(
          //               padding: EdgeInsets.only(
          //                 left: 7.h,
          //                 top: 13.v,
          //                 bottom: 13.v,
          //               ),
          //               child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Text(
          //                     "${model.servicelist[index].name}",
          //                     style: theme.textTheme.titleMedium,
          //                   ),
          //                   Row(
          //                     children: [
          //                       Padding(
          //                         padding: EdgeInsets.only(bottom: 2.v),
          //                         child: _buildTwo(
          //                           context,
          //                           price: "₹${model.servicelist[index].price}",
          //                         ),
          //                       ),
          //                       Padding(
          //                         padding: EdgeInsets.only(left: 6.h),
          //                         child: RichText(
          //                           text: TextSpan(
          //                             children: [
          //                               TextSpan(
          //                                 text: "₹",
          //                                 style: CustomTextStyles.titleMediumff444444,
          //                               ),
          //                               TextSpan(
          //                                 text: "${model.servicelist[index].discountprice}",
          //                                 style: CustomTextStyles.titleMediumff444444,
          //                               ),
          //                             ],
          //                           ),
          //                           textAlign: TextAlign.left,
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                 ],
          //               ),
          //             ),
          //             Spacer(),
          //             Padding(
          //               padding: EdgeInsets.only(
          //                 top: 23.v,
          //                 bottom: 21.v,
          //               ),
          //               child: Text(
          //                 ">",
          //                 style: theme.textTheme.titleMedium,
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //       Container(
          //         child: Column(children: [
          //           SizedBox(height: 7.v),
          //           Container(
          //             width: 305.h,
          //             margin: EdgeInsets.only(
          //               left: 1.h,
          //               right: 15.h,
          //             ),
          //             child: Text(
          //               "${model.servicelist[index].discription}",
          //               maxLines: 3,
          //               overflow: TextOverflow.ellipsis,
          //               style: CustomTextStyles.labelMediumGray80001,
          //             ),
          //           ),
          //           SizedBox(height: 8.v),
          //           Padding(
          //             padding: EdgeInsets.only(
          //               left: 1.h,
          //               right: 2.h,
          //             ),
          //             child: Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: [
          //                 Padding(
          //                   padding: EdgeInsets.only(bottom: 1.v),
          //                   child: Column(
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: [
          //                       Align(
          //                         alignment: Alignment.center,
          //                         child: Text(
          //                           "Ideal Skin Type",
          //                           style: theme.textTheme.labelMedium,
          //                         ),
          //                       ),
          //                       SizedBox(height: 3.v),
          //                       SizedBox(
          //                         width: 71.h,
          //                         child: Text(
          //                           "${model.servicelist[index].idealfor}",
          //                           maxLines: 5,
          //                           overflow: TextOverflow.ellipsis,
          //                           style: theme.textTheme.labelSmall,
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //                 Padding(
          //                   padding: EdgeInsets.only(top: 32.v),
          //                   child: Column(
          //                     children: [
          //                       Align(
          //                         alignment: Alignment.centerRight,
          //                         child: Padding(
          //                           padding: EdgeInsets.only(right: 3.h),
          //                           child: Text(
          //                             "${model.servicelist[index].Duration}",
          //                             style: theme.textTheme.labelMedium,
          //                           ),
          //                         ),
          //                       ),
          //                       SizedBox(height: 5.v),
          //                       SizedBox(
          //                         width: 220.h,
          //                         child: Row(
          //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                           children: [
          //                             CustomElevatedButton(
          //                               height: 28.v,
          //                               width: 106.h,
          //                               text: "Whatsapp",
          //                               leftIcon: Container(
          //                                 margin: EdgeInsets.only(right: 1.h),
          //                                 child: CustomImageView(
          //                                   imagePath: ImageConstant.imgLogoswhatsappicon,
          //                                   height: 15.adaptSize,
          //                                   width: 15.adaptSize,
          //                                 ),
          //                               ),
          //                               buttonStyle: CustomButtonStyles.fillWhiteA,
          //                               buttonTextStyle:
          //                               CustomTextStyles.labelMediumInterGreen400,
          //                             ),
          //                             CustomElevatedButton(
          //                               height: 28.v,
          //                               width: 106.h,
          //                               text: "Call Now",
          //                               leftIcon: Container(
          //                                 margin: EdgeInsets.only(right: 1.h),
          //                                 child: CustomImageView(
          //                                   imagePath:
          //                                   ImageConstant.imgFluentcall24filled,
          //                                   height: 15.adaptSize,
          //                                   width: 15.adaptSize,
          //                                 ),
          //                               ),
          //                               buttonStyle: CustomButtonStyles.fillPrimary,
          //                               buttonTextStyle:
          //                               CustomTextStyles.labelMediumInterWhiteA700,
          //                             ),
          //                           ],
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //           SizedBox(height: 8.v),
          //         ],),
          //       )
          //     ],
          //   ),
          // );
        }, separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 10,); },),
      ),
    SizedBox(height: 8.v),

    // SizedBox(height: 8.v),
    //   Container(
    //     margin: EdgeInsets.symmetric(horizontal: 16.h),
    //     padding: EdgeInsets.all(3.h),
    //     decoration: AppDecoration.outlineBlack.copyWith(
    //       borderRadius: BorderRadiusStyle.roundedBorder3,
    //     ),
    //     child: Row(
    //       mainAxisSize: MainAxisSize.max,
    //       children: [
    //         CustomImageView(
    //           imagePath: ImageConstant.imgRectangle15,
    //           height: 69.v,
    //           width: 66.h,
    //           radius: BorderRadius.circular(
    //             2.h,
    //           ),
    //         ),
    //         Padding(
    //           padding: EdgeInsets.only(
    //             left: 7.h,
    //             top: 13.v,
    //             bottom: 13.v,
    //           ),
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text(
    //                 "Anti aging Facial",
    //                 style: theme.textTheme.titleMedium,
    //               ),
    //               _buildSixtyFour(
    //                 context,
    //                 price: "₹5600",
    //                 price1: "₹4200",
    //               ),
    //             ],
    //           ),
    //         ),
    //         Spacer(),
    //         Padding(
    //           padding: EdgeInsets.only(
    //             top: 23.v,
    //             right: 16.h,
    //             bottom: 21.v,
    //           ),
    //           child: Text(
    //             ">",
    //             style: theme.textTheme.titleMedium,
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // SizedBox(height: 8.v),
    //   Container(
    //     margin: EdgeInsets.symmetric(horizontal: 16.h),
    //     padding: EdgeInsets.all(3.h),
    //     decoration: AppDecoration.outlineBlack.copyWith(
    //       borderRadius: BorderRadiusStyle.roundedBorder3,
    //     ),
    //     child: Row(
    //       mainAxisSize: MainAxisSize.max,
    //       children: [
    //         CustomImageView(
    //           imagePath: ImageConstant.imgRectangle17,
    //           height: 69.v,
    //           width: 66.h,
    //           radius: BorderRadius.circular(
    //             2.h,
    //           ),
    //         ),
    //         Padding(
    //           padding: EdgeInsets.only(
    //             left: 7.h,
    //             top: 13.v,
    //             bottom: 13.v,
    //           ),
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text(
    //                 "Brightening Facial",
    //                 style: theme.textTheme.titleMedium,
    //               ),
    //               _buildSixtyFour(
    //                 context,
    //                 price: "₹5600",
    //                 price1: "₹4200",
    //               ),
    //             ],
    //           ),
    //         ),
    //         Spacer(),
    //         Padding(
    //           padding: EdgeInsets.only(
    //             top: 23.v,
    //             right: 16.h,
    //             bottom: 21.v,
    //           ),
    //           child: Text(
    //             ">",
    //             style: theme.textTheme.titleMedium,
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // SizedBox(height: 8.v),
    //   Container(
    //     margin: EdgeInsets.symmetric(horizontal: 16.h),
    //     padding: EdgeInsets.all(3.h),
    //     decoration: AppDecoration.outlineBlack.copyWith(
    //       borderRadius: BorderRadiusStyle.roundedBorder3,
    //     ),
    //     child: Row(
    //       mainAxisSize: MainAxisSize.min,
    //       children: [
    //         CustomImageView(
    //           imagePath: ImageConstant.imgRectangle19,
    //           height: 69.v,
    //           width: 66.h,
    //           radius: BorderRadius.circular(
    //             2.h,
    //           ),
    //         ),
    //         Padding(
    //           padding: EdgeInsets.only(
    //             left: 7.h,
    //             top: 12.v,
    //             bottom: 12.v,
    //           ),
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text(
    //                 "Acne Facial",
    //                 style: theme.textTheme.titleMedium,
    //               ),
    //               _buildSixtyFour(
    //                 context,
    //                 price: "₹5600",
    //                 price1: "₹4200",
    //               ),
    //             ],
    //           ),
    //         ),
    //         Spacer(),
    //         Padding(
    //           padding: EdgeInsets.only(
    //             top: 23.v,
    //             right: 10.h,
    //             bottom: 22.v,
    //           ),
    //           child: Text(
    //             ">",
    //             style: theme.textTheme.titleMedium,
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // SizedBox(height: 8.v),
    //   Container(
    //     margin: EdgeInsets.symmetric(horizontal: 16.h),
    //     padding: EdgeInsets.all(3.h),
    //     decoration: AppDecoration.outlineBlack.copyWith(
    //       borderRadius: BorderRadiusStyle.roundedBorder3,
    //     ),
    //     child: Row(
    //       mainAxisSize: MainAxisSize.min,
    //       children: [
    //         CustomImageView(
    //           imagePath: ImageConstant.imgRectangle21,
    //           height: 69.v,
    //           width: 66.h,
    //           radius: BorderRadius.circular(
    //             2.h,
    //           ),
    //         ),
    //         Padding(
    //           padding: EdgeInsets.only(
    //             left: 7.h,
    //             top: 12.v,
    //             bottom: 12.v,
    //           ),
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text(
    //                 "Sensitive Skin Facial",
    //                 style: theme.textTheme.titleMedium,
    //               ),
    //               _buildSixtyFour(
    //                 context,
    //                 price: "₹5600",
    //                 price1: "₹4200",
    //               ),
    //             ],
    //           ),
    //         ),
    //         Spacer(),
    //         Padding(
    //           padding: EdgeInsets.only(
    //             top: 23.v,
    //             right: 10.h,
    //             bottom: 22.v,
    //           ),
    //           child: Text(
    //             ">",
    //             style: theme.textTheme.titleMedium,
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    ],
    ),
    ),
    ),
    );
    });
  }







  /// Common widget
  Widget _buildTwo(
      BuildContext context, {
        required String price,
      }) {
    return SizedBox(
      height: 18.v,
      width: 47.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              price,
              style: CustomTextStyles.labelLargePoppinsGray70001.copyWith(
                color: appTheme.gray70001,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVector1,
            height: 1.v,
            width: 47.h,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 7.v),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSixtyFour(
      BuildContext context, {
        required String price,
        required String price1,
      }) {
    return Row(
      children: [
        Container(
          height: 18.v,
          width: 47.h,
          margin: EdgeInsets.only(bottom: 2.v),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  price,
                  style: CustomTextStyles.labelLargePoppinsGray70001.copyWith(
                    color: appTheme.gray70001,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVector1,
                height: 1.v,
                width: 47.h,
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 7.v),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "₹",
                  style: CustomTextStyles.titleMediumff444444,
                ),
                TextSpan(
                  text: "4200",
                  style: CustomTextStyles.titleMediumff444444,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}

