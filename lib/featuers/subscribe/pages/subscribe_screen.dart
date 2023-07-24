import 'package:flutter_svg/svg.dart';
import 'package:whatsapp/core/app_configs.dart';
import 'package:whatsapp/core/app_routes.dart';
import 'package:whatsapp/featuers/subscribe/manager/subscribe_controller.dart';

class SubscribeScreen extends GetView<SubscribeController> {
  const SubscribeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(AppSizes.padding20.w.h),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment:  MainAxisAlignment.center,
              children: [
                SizedBox(height: AppSizes.padding40.h,),
                Image.asset(AppImages.checkLink,
                  height: AppSizes.imageSize.h,
                  width: AppSizes.imageSize.w,
                ),
                SizedBox(height: AppSizes.padding40.h,),

                Text(AppTexts.subscribeNow,
                  style: context.theme.primaryTextTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: AppSizes.padding20.h,),
                Row(
                  children: [
                    SvgPicture.asset(AppImages.checkImage,color: AppColors.splashBackgroundColor,),
                    SizedBox(width: AppSizes.padding8.h,),
                    Text(AppTexts.unLimitedCheck,
                      style: context.theme.primaryTextTheme.bodySmall,
                      textAlign: TextAlign.start,
                    ),

                  ],
                ),
                SizedBox(height: AppSizes.padding20.h,),
                Row(
                  children: [
                    SvgPicture.asset(AppImages.checkImage,color: AppColors.splashBackgroundColor,),
                    SizedBox(width: AppSizes.padding8.h,),
                    Text(AppTexts.unLimitedeEmailCheck,
                      style: context.theme.primaryTextTheme.bodySmall,
                      textAlign: TextAlign.start,
                    ),

                  ],
                ),
                SizedBox(height: AppSizes.padding20.h,),

                Row(
                  children: [
                    SvgPicture.asset(AppImages.checkImage,color: AppColors.splashBackgroundColor,),
                    SizedBox(width: AppSizes.padding8.h,),
                    Text(AppTexts.certainResults,
                      style: context.theme.primaryTextTheme.bodySmall,
                      textAlign: TextAlign.start,
                    ),

                  ],
                ),
                SizedBox(height: AppSizes.padding40.h,),

                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppSizes.radius40.r),
                      color: AppColors.splashBackgroundColor
                  ),
                  child: MaterialButton(
                    minWidth:double.infinity.w,
                    padding:
                    EdgeInsets.all(AppSizes.padding8.w.h),
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSizes.radius40.r),
                    ),
                    onPressed: () {
                     Get.toNamed(AppRoutes.choosePlane);
                    },
                    child:
                 Text(AppTexts.subscribe,
                      style: context.theme.primaryTextTheme.bodyLarge,
                    ),
                  ),
                ),
              ],

            ),
          ),
        )
      ),
    );
  }
}
