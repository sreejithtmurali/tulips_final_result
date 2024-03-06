import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

import '../home_screen/cat.dart';

class DetailsScreenViewModel extends BaseViewModel{
  TextEditingController searchController = TextEditingController();
  late ServiceModel serviceModel;
  void updateitem(ServiceModel cat){
    serviceModel=cat;
    notifyListeners();

  }
  void launchWhatsApp() async {
    final link = WhatsAppUnilink(
      phoneNumber: '+91-8590852398',
      text: "Hey! I'm intrested in this service:${serviceModel.name} please give me more details",
    );
    await launchUrlString('$link');
  }
  Future<void> launchPhoneDialer() async {
    final Uri _phoneUri = Uri(
        scheme: "tel",
        path: "8590852398"
    );
    try {
      if (await canLaunchUrl(_phoneUri))
        await launchUrl(_phoneUri);
    } catch (error) {
      throw("Cannot dial");
    }
  }
}