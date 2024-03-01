import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class SignUpScreenViewModel extends BaseViewModel{
  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
}