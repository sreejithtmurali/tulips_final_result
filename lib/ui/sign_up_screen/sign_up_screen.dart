import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tulips/core/app_export.dart';
import 'package:tulips/ui/sign_up_screen/sign_up_screen_view_model.dart';
import 'package:tulips/widgets/app_bar/appbar_title_image.dart';
import 'package:tulips/widgets/app_bar/custom_app_bar.dart';
import 'package:tulips/widgets/custom_elevated_button.dart';
import 'package:tulips/widgets/custom_text_form_field.dart';

import '../../app/app.router.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );



  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignUpScreenViewModel>.reactive(

        viewModelBuilder: () => SignUpScreenViewModel(),
        onViewModelReady: (model) {

        },
        builder: (context, model, child) {
          return SafeArea(
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: PreferredSize(
                  preferredSize: const Size.fromHeight(60.0),
                  child: Opacity(
                    opacity: 0.3,
                    child: CustomAppBar(
                      title: Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Column(
                          children: [
                            AppbarTitleImage(
                              imagePath: ImageConstant.imgNounFlower6448393,
                            ),
                            SizedBox(height: 1),
                            AppbarTitleImage(
                              imagePath: ImageConstant.imgTulips,
                              margin: EdgeInsets.symmetric(horizontal: 7),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
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
                    child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 40,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 265,
                            margin: EdgeInsets.only(right: 61),
                            child: Text(
                              "Embark on Your Beauty Odyssey",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: 273,
                            margin: EdgeInsets.only(right: 54),
                            child: Text(
                              "Sign up and sculpt your personal canvas of elegance, where every click is a stroke of self-expression.",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallBluegray900,
                            ),
                          ),
                          SizedBox(height: 37),
                          Text(
                            "Full name",
                            style: CustomTextStyles
                                .labelLargePoppinsBluegray900,
                          ),
                          SizedBox(height: 3),
                          CustomTextFormField(
                            controller: model.fullNameController,
                            hintText: "Name",
                          ),
                          SizedBox(height: 11),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "DOB",
                                    style: CustomTextStyles
                                        .labelLargePoppinsBluegray900,
                                  ),
                                  SizedBox(height: 2),
                                  Container(
                                    width: 144,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 14,
                                    ),
                                    decoration: AppDecoration.outlineOnPrimary
                                        .copyWith(
                                      borderRadius: BorderRadiusStyle
                                          .roundedBorder3,
                                    ),
                                    child: Text(
                                      "DD / MMM / YYYY",
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Gender",
                                    style: CustomTextStyles
                                        .labelLargePoppinsBluegray900,
                                  ),
                                  SizedBox(height: 2),
                                  SizedBox(
                                    width: 168,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(right: 8),
                                          child: _buildFifty(
                                            context,
                                            settingsImage: ImageConstant
                                                .imgSettingsPrimary,
                                            text: "He",
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 8),
                                          child: _buildFifty(
                                            context,
                                            settingsImage: ImageConstant
                                                .imgSettingsPrimarycontainer,
                                            text: "She",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 11),
                          Text(
                            "Email",
                            style: CustomTextStyles
                                .labelLargePoppinsBluegray900,
                          ),
                          SizedBox(height: 3),
                          CustomTextFormField(
                            controller: model.emailController,
                            hintText: "Your mail",
                            textInputAction: TextInputAction.done,
                          ),
                          SizedBox(height: 66),
                          CustomElevatedButton(
                            text: "Next",
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, Routes.homeContainerScreen);
                            },
                          ),
                          SizedBox(height: 5),
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

  Widget _buildFifty(
    BuildContext context, {
    required String settingsImage,
    required String text,
  }) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 7    ,
          vertical: 12    ,
        ),
        decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: settingsImage,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10    ),
              child: Text(
                text,
                style:
                    CustomTextStyles.titleMediumInterPrimaryContainer.copyWith(
                  color: theme.colorScheme.primaryContainer,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
