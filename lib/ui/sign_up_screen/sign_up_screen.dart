import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:tulips/core/app_export.dart';
import 'package:tulips/ui/sign_up_screen/sign_up_screen_view_model.dart';
import 'package:tulips/widgets/app_bar/appbar_title_image.dart';
import 'package:tulips/widgets/app_bar/custom_app_bar.dart';
import 'package:tulips/widgets/custom_elevated_button.dart';
import 'package:tulips/widgets/custom_text_form_field.dart';



class SignUpScreen extends StatelessWidget {
  late String phone;

  SignUpScreen({Key? key, required this.phone});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignUpScreenViewModel>.reactive(
        viewModelBuilder: () => SignUpScreenViewModel(),
        onViewModelReady: (model) {
          model.updateno(phone);
        },
        builder: (context, model, child) {
          return SafeArea(
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: CustomAppBar(
                title: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Column(
                    children: [
                      AppbarTitleImage(
                        imagePath: ImageConstant.imgNounFlower6448393,
                      ),
                      SizedBox(height: 1.v),
                      AppbarTitleImage(
                        imagePath: ImageConstant.imgTulips,
                        margin: EdgeInsets.symmetric(horizontal: 7.h),
                      ),
                    ],
                  ),
                ),
              ),
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
                        horizontal: 16.h,
                        vertical: 40.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 265.h,
                            margin: EdgeInsets.only(right: 61.h),
                            child: Text(
                              "Embark on Your Beauty Odyssey",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                          SizedBox(height: 10.v),
                          Container(
                            width: 273.h,
                            margin: EdgeInsets.only(right: 54.h),
                            child: Text(
                              "Sign up and sculpt your personal canvas of elegance, where every click is a stroke of self-expression.",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallBluegray90001,
                            ),
                          ),
                          SizedBox(height: 37.v),
                          Text(
                            "Full name",
                            style:
                            CustomTextStyles.labelLargePoppinsBluegray90001,
                          ),
                          SizedBox(height: 3.v),
                          CustomTextFormField(
                            validator: (value) {
                              if (value == null ||value.contains("@")) {
                                return 'Please enter Name';
                              }
                              return null;
                            },
                            controller: model.fullNameController,
                            hintText: "Name",
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 8.h,
                              vertical: 15.v,
                            ),
                          ),
                          SizedBox(height: 11.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "DOB",
                                    style: CustomTextStyles.labelLargePoppinsBluegray90001,
                                  ),
                                  SizedBox(height: 2.v),
                                  Container(
                                    width: 144.h,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8.h,
                                      vertical: 14.v,
                                    ),

                                    child:TextFormField(
                                      validator: (value) {
                                        if (value == null ||value.contains("@")) {
                                          return 'Please enter DOB';
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                          hintText: "YYYY-MM-DD",
                                          border: OutlineInputBorder()),
                                      onTap: () async {
                                        DateTime? pickedDate = await showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime(1950),
                                            //DateTime.now() - not to allow to choose before today.
                                            lastDate: DateTime(2100));

                                        if (pickedDate != null) {
                                          print(
                                              pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                          String formattedDate =
                                          DateFormat('yyyy-MM-dd')
                                              .format(pickedDate);
                                          print(
                                              formattedDate); //formatted date output using intl package =>  2021-03-16

                                          model.dobctrler.text =
                                              formattedDate; //set output date to TextField value.
                                        }
                                      },

                                      // validator: (value) {
                                      //   if (value == null || value.isEmpty) {
                                      //     return 'Please enter start date';
                                      //   }
                                      //   return null;
                                      // },
                                      controller: model.dobctrler,

                                      textInputAction: TextInputAction.done,
                                    )


                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Gender",
                                    style: CustomTextStyles.labelLargePoppinsBluegray90001,
                                  ),
                                  SizedBox(height: 2.v),
                                  InkWell(
                                    onTap: (){
                                      model.change(gender.male);
                                    },

                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 7.h,
                                        vertical: 12.v,
                                      ),
                                      decoration: AppDecoration.outlineGray.copyWith(
                                        borderRadius: BorderRadiusStyle.roundedBorder10,
                                          color:  model.sex==gender.male?Colors.purpleAccent:Colors.white
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                            color: model.sex==gender.male?theme.colorScheme.primaryContainer:Colors.grey,
                                            imagePath: ImageConstant.imgSettingsPrimary,
                                            height: 20.adaptSize,
                                            width: 20.adaptSize,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 10.h),
                                            child: Text(
                                              "He",
                                              style: CustomTextStyles.titleMediumInterPrimaryContainer
                                                  .copyWith(
                                                color: model.sex==gender.male?theme.colorScheme.primaryContainer:Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )

                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20.v),
                                child: InkWell(
                                  onTap: (){
                                    model.change(gender.female);
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 7.h,
                                      vertical: 12.v,
                                    ),
                                    decoration: AppDecoration.outlineGray.copyWith(
                                      borderRadius: BorderRadiusStyle.roundedBorder10,
                                        color:  model.sex==gender.female?Colors.purpleAccent:Colors.white
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                          color: model.sex==gender.male?theme.colorScheme.primaryContainer:Colors.grey,
                                          imagePath: ImageConstant.imgSettingsPrimarycontainer,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10.h),
                                          child: Text(
                                            "She",
                                            style: CustomTextStyles.titleMediumInterPrimaryContainer
                                                .copyWith(
                                              color: model.sex==gender.female?theme.colorScheme.primaryContainer:Colors.grey
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 11.v),
                          Text(
                            "Email",
                            style:
                            CustomTextStyles.labelLargePoppinsBluegray90001,
                          ),
                          SizedBox(height: 3.v),
                          CustomTextFormField(
                            controller: model.emailController,
                            hintText: "Your mail",
                            validator: (value) {
                              if (!value!.contains("@")) {
                                return 'Please enter Email';
                              }
                              return null;
                            },
                            textInputAction: TextInputAction.done,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 8.h,
                              vertical: 15.v,
                            ),
                          ),
                          SizedBox(height: 66.v),
                          CustomElevatedButton(
                            text: "Next",
                            onPressed: (){
                              model.nav();
                            },
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

  /// Section Widget

}

  /// Common widget

