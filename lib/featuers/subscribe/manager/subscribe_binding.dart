import 'package:whatsapp/core/app_configs.dart';
import 'package:whatsapp/featuers/subscribe/manager/subscribe_controller.dart';

class SubscribeBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SubscribeController>(() => SubscribeController());
  }

}