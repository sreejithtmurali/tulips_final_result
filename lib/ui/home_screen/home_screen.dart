import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:tulips/ui/offer_page/offer_page.dart';
import 'package:tulips/ui/home_screen/homeScreenViewModel.dart';
import 'package:tulips/widgets/custom_search_view.dart';
import '../../ui/contact_screen/contact_screen.dart';
import '../../ui/profie/profile_one_screen.dart';
import '../../routes/app_routes.dart';
import 'widgets/home_item_widget.dart';
import 'package:tulips/widgets/custom_elevated_button.dart';
import 'package:tulips/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:tulips/core/app_export.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeScreenViewModel>.reactive(
        viewModelBuilder: () => HomeScreenViewModel(),
        onViewModelReady: (model) {
          model.fetchDataFromFirebase2();
          model.fetchDataFromFirebase();
        },
        builder: (context, model, child) {
    return SafeArea(
      right: true,
    child: Scaffold(
    resizeToAvoidBottomInset: false,
    body: SingleChildScrollView(
      child: Column(
      children: [
        SizedBox(
          height: 130,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 106,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle2,
                height: 106,
                width: 358,
                alignment: Alignment.topCenter,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: CustomSearchView(
                  width: 328,
                  controller: searchController,
                  hintText: "Search beauty services like spa facial...",
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ],
          ),
        ),
      SizedBox(height: 36),
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
                  model.navcat(model.catogorylist[index].catname);
                },
                child: SizedBox(
                  width: 60,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 18),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage("${ model.catogorylist![index].url}"),
                        radius: 30,
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
      SizedBox(height: 11),
      Align(
      alignment: Alignment.centerLeft,
      child: Padding(
      padding: EdgeInsets.only(left: 16),
      child: Text(
      "What we offer",
      style: CustomTextStyles.titleMediumBluegray90001,
      ),
      ),
      ),
      SizedBox(height: 10),
        SizedBox(
          child: ListView.builder(
            itemCount: model.servicelist!.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
             return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: AppDecoration.fillBlueGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder24,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 3),
                      Container(

                        height: 304,
                        width: 304,
                       decoration: BoxDecoration(
                         image: DecorationImage(image: NetworkImage("${model.servicelist[index].url}"),fit: BoxFit.cover),
                         border: Border.all(width: 1),
                         borderRadius: BorderRadius.circular(10)
                       ),

                      ),
                      SizedBox(height: 15),
                      Container(
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${model.servicelist[index].name}",
                                    style: CustomTextStyles.titleMediumInterOnPrimaryContainer,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "₹",
                                          style: CustomTextStyles.titleMediumff252626,
                                        ),
                                        TextSpan(
                                          text: "${model.servicelist[index].discountprice}",
                                          style: CustomTextStyles.titleMediumff252626,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent),
                                onPressed: () {
                                  model.navdetails(model.servicelist[index]);
                                },
                                child: Text("View more",style: TextStyle(color: Colors.white),),


                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );

          },),
        ),

      SizedBox(height: 65),
      ],
      ),
    ),
   
    ),
    );
    });
  }




}
