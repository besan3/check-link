import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:whatsapp/core/app_colors.dart';
import 'package:whatsapp/core/app_images.dart';
import 'package:whatsapp/core/app_routes.dart';

class SplashScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 5), () {
      Get.offAllNamed(AppRoutes.getSubscribeRout());
    });
    return Scaffold(
      backgroundColor: AppColors.splashBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(AppImages.appLogo),
          ),
        ],
      ),
    );
  }
}
