import 'package:firebase_database/firebase_database.dart';
import 'package:stacked/stacked.dart';

import '../../app/app.router.dart';
import '../../app/utils.dart';
import '../home_screen/cat.dart';

class OfferpageViewModel extends BaseViewModel{
  List<ServiceModel> servicelist = [];


  void fetchDataFromFirebase2() {
    DatabaseReference db_Ref = FirebaseDatabase.instance.ref().child('service');
    db_Ref.onValue.listen((DatabaseEvent event) {
      final data = event.snapshot;
      Map P = data.value as Map<dynamic, dynamic>;
      print(P.toString());servicelist.clear;
      notifyListeners();
      servicelist.clear();
      servicelist = convertFirebaseResponseToServiceList(P);
      notifyListeners();
      print('service::::${servicelist.toString()}');
    });
  }
  List<ServiceModel> convertFirebaseResponseToServiceList(Map<dynamic, dynamic> firebaseResponse) {


    firebaseResponse.forEach((key, value) {
      String id = key.toString();
      print("key:$key");
      String name = value['name'];
      String url = value['url'];
      String price = value['price'];
      String discription = value['discription'];
      String category = value['category'];
      String discountpersent = value['discountpersent'];
      String idealfor = value['idealfor'];
      String discountprice = value['discountprice'];
      String Duration = value['Duration'];



      ServiceModel p = ServiceModel(id:id,url: url, name: name, discription: discription, category: category, price: price, discountpersent: discountpersent, discountprice: discountprice, idealfor: idealfor, Duration: Duration);
      servicelist.add(p);
      notifyListeners();

    });

    return servicelist;
  }
  void navdetails(ServiceModel serviceModel){
    navigationService.navigateTo(Routes.detailsScreen,arguments: DetailsScreenArguments(serviceModel: serviceModel));
  }
}