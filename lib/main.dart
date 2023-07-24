import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:whatsapp/core/app_routes.dart';
import 'package:whatsapp/core/app_themes.dart';
import 'package:whatsapp/featuers/subscribe/manager/subscribe_binding.dart';
import 'core/app_sizes.dart';

void main() {
  runApp(const MainApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
        designSize:  const Size(AppSizes.screenWidth, AppSizes.screenHeight),
        minTextAdapt: true,
        splitScreenMode: true,
      builder:   (context , child)=>
         GetMaterialApp(
           debugShowCheckedModeBanner: false,
          theme: AppThemes.customLightTheme,

          textDirection: TextDirection.rtl,

          initialRoute: AppRoutes.splash,
          initialBinding: SubscribeBinding(),
          getPages: AppRoutes().routes,
        )

    );
  }
}


