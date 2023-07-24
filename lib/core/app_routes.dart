
import 'package:get/get.dart';
import 'package:whatsapp/featuers/home/pages/home_screen.dart';
import 'package:whatsapp/featuers/home/pages/check_result_screen.dart';
import 'package:whatsapp/featuers/splash/splash_screen.dart';
import 'package:whatsapp/featuers/subscribe/manager/subscribe_binding.dart';
import 'package:whatsapp/featuers/subscribe/pages/choose_plan_screen.dart';
import 'package:whatsapp/featuers/subscribe/pages/subscribe_screen.dart';

class AppRoutes{
  static String splash='/';
  static String home='/home';
  static String subscribe='/subscribe';
  static String choosePlane='/choosePlane';
  static String result='/result';

  static String getSplashRout() => splash;
  static String getHomeRout() => home;
  static String getSubscribeRout() => subscribe;
  static String getChoosePlaneRout() => choosePlane;
  static String getCheckResultRout() => result;

  List<GetPage> routes = [

    GetPage(name: splash, page: () => SplashScreen()),
    GetPage(name: subscribe, page: () => SubscribeScreen(),binding: SubscribeBinding()),
    GetPage(name: choosePlane, page: () => ChoosePlanScreen(),binding: SubscribeBinding()),
    GetPage(name: home, page: () => HomeScreen()),

  ];

}