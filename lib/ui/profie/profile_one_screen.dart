import 'package:tulips/widgets/custom_text_form_field.dart';
import 'package:tulips/widgets/custom_drop_down.dart';
import 'package:tulips/widgets/custom_elevated_button.dart';
import 'package:tulips/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:tulips/core/app_export.dart';

import '../offer_page/offer_page.dart';

class ProfileOneScreen extends StatelessWidget {
  ProfileOneScreen({Key? key})
      : super(
    key: key,
  );

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              key: _formKey,
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
                            ImageConstant.imgGroup7,
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
                                                color: appTheme.deepPurple900
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
                                          imagePath: ImageConstant.imgLock,
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
                            width: 85.h,
                            child: Text(
                              "Itunuoluwa Abidoye",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style:
                              CustomTextStyles
                                  .titleMediumDMSansOnPrimaryContainer.copyWith(
                                height: 1.50,
                              ),
                            ),
                          ),
                          Text(
                            "Itunuoluwa@petra.africa",
                            style: CustomTextStyles.bodyMediumGray500,
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
                        controller: firstNameController,
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
                        controller: lastNameController,
                        hintText: "And your last name?",
                      ),
                    ),
                    SizedBox(height: 19.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15.h,
                        right: 16.h,
                      ),
                      child: CustomTextFormField(
                        controller: phoneNumberController,
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
                        items: dropdownItemList,
                        onChanged: (value) {},
                      ),
                    ),
                    SizedBox(height: 19.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(bottom: 1.v),
                              padding: EdgeInsets.symmetric(horizontal: 13.h),
                              decoration: AppDecoration.fillOnErrorContainer
                                  .copyWith(
                                borderRadius: BorderRadiusStyle.customBorderTL5,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 19.v),
                                  Padding(
                                    padding: EdgeInsets.only(left: 2.h),
                                    child: Text(
                                      "What is your date of birth?",
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ),
                                  SizedBox(height: 1.v),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgMenu,
                                    height: 16.v,
                                    width: 15.h,
                                    alignment: Alignment.centerRight,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(top: 54.v),
                              child: Divider(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 52.v),
                    CustomElevatedButton(
                      width: 247.h,
                      text: "Update Profile",
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
  }


}
