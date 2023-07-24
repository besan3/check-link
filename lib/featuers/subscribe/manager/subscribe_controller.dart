import 'package:whatsapp/core/app_configs.dart';
import 'package:whatsapp/core/validations.dart';
import 'package:whatsapp/featuers/subscribe/api/purchase_api.dart';

class SubscribeController extends GetxController{
  bool isSelected=false;
  int selectedIndex=-1.obs;

  void selectService(int index){
    selectedIndex=index;
    update();
  }
  List<String>plans=[
    AppTexts.week,
    AppTexts.month,
    AppTexts.year,
  ];
  List<String>prices=[
    '\$5',
    '\$10',
    '\$15',
  ];

  Future fetchOffers()async{
    final offers=await PurchaseApi.fetchOffers();
    final offer=offers.first;
    if(offers.isEmpty){
      AppValidations.showSnake('no plans found');
    }
    print('offer:$offer');
  }
}