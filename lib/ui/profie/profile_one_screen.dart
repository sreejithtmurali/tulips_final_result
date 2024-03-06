import 'package:stacked/stacked.dart';
import 'package:tulips/ui/contact_screen/contact_screen.dart';
import 'package:tulips/ui/home_screen/home_screen.dart';
import 'package:tulips/ui/offer_page/offer_page.dart';
import 'package:tulips/ui/profie/profile_one_screen_viewmodel.dart';
import 'package:tulips/widgets/custom_text_form_field.dart';
import 'package:tulips/widgets/custom_drop_down.dart';
import 'package:tulips/widgets/custom_elevated_button.dart';
import 'package:tulips/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:tulips/core/app_export.dart';

import '../../routes/app_routes.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key})
      : super(
    key: key,
  );


  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileScreenViewModel>.reactive(

        viewModelBuilder: () => ProfileScreenViewModel(),
        onViewModelReady: (model) {
model.init();
        },
        builder: (context, model, child) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                actions: [
                  Text("Logout",style: TextStyle(color: Colors.red),),
                  IconButton(onPressed: (){

                  model.logout();
                },
                tooltip: "Press to Logout",
                    icon: Icon(Icons.power_settings_new_rounded,color: Colors.red,))],
              ),
              backgroundColor: appTheme.gray10001,
              resizeToAvoidBottomInset: false,
              body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery
                        .of(context)
                        .viewInsets
                        .bottom,
                  ),
                  child: Form(
                    key: model.formKey,
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 1.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 106.h,
                              vertical: 22.v,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  ImageConstant.imgGroup17,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 32.v),
                                SizedBox(
                                  height: 78.v,
                                  width: 74.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                          height: 78.v,
                                          width: 74.h,
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Opacity(
                                                opacity: 0.15008691,
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                    height: 78.v,
                                                    width: 74.h,
                                                    decoration: BoxDecoration(
                                                      color: appTheme
                                                          .deepPurple900
                                                          .withOpacity(0.4),
                                                      borderRadius: BorderRadius
                                                          .circular(
                                                        39.h,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgLock,
                                                height: 40.v,
                                                width: 30.h,
                                                alignment: Alignment.center,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgUserImage,
                                        height: 72.v,
                                        width: 68.h,
                                        radius: BorderRadius.circular(
                                          36.h,
                                        ),
                                        alignment: Alignment.center,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 19.v),
                                SizedBox(
                                  width: 200.h,
                                  child: Text(
                                    "${model.name}",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .titleMediumDMSansGray90001.copyWith(
                                      height: 1.50,
                                    ),
                                  ),
                                ),
                                Text(
                                  "${model.email}",
                                  style: CustomTextStyles
                                      .bodyMediumDMSansGray500,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 15.h,
                              right: 16.h,
                            ),
                            child: CustomTextFormField(
                              controller: model.firstNameController,
                              hintText: "What’s your first name?",
                            ),
                          ),
                          SizedBox(height: 19.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 15.h,
                              right: 16.h,
                            ),
                            child: CustomTextFormField(
                              controller: model.dobctrlr,
                              hintText: "And your DOB?",
                            ),
                          ),
                          SizedBox(height: 19.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 15.h,
                              right: 16.h,
                            ),
                            child: CustomTextFormField(
                              controller: model.phoneNumberController,
                              hintText: "Phone number",
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.phone,
                            ),
                          ),
                          SizedBox(height: 19.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 15.h,
                              right: 16.h,
                            ),
                            child: CustomDropDown(
                              hintText: "Select your gender",
                              items: model.dropdownItemList,

                              onChanged: (value) {

                              },
                            ),
                          ),
                          SizedBox(height: 19.v),

                          SizedBox(height: 52.v),
                          CustomElevatedButton(
                            height: 55.v,
                            width: 247.h,
                            text: "Update Profile",
                            buttonStyle: CustomButtonStyles.fillPrimary,
                            buttonTextStyle: CustomTextStyles
                                .titleSmallDMSansOnErrorContainer,
                          ),
                          SizedBox(height: 5.v),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              
            ),
          );
        });
  }


}