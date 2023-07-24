import 'package:whatsapp/core/app_configs.dart';
import 'package:whatsapp/core/app_widgets.dart';
import 'package:whatsapp/featuers/home/manager/app_controller.dart';

import '../../../core/validations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return  GetBuilder(
      init: AppController(),
      builder: (controller) {
        return Scaffold(

          body: SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.all(AppSizes.padding20.w.h),
              child: SafeArea(
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: AppSizes.padding40.h,),
                      Center(
                        child: Image.asset(AppImages.checkLink,
                        height: AppSizes.imageSize.h,
                        width: AppSizes.imageSize.w,
                        ),
                      ),
                      SizedBox(height: AppSizes.padding20.h,),
                      Center(
                        child: Text(AppTexts.staySafe,
                        style: context.theme.primaryTextTheme.titleLarge,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: AppSizes.padding40.h,),
                      Text(AppTexts.enterLink,
                      style: context.theme.primaryTextTheme.bodySmall,
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: AppSizes.padding20.h,),
                      DefaultTextForm(
                          textEditingController: controller.linkController,
                          textInputType: TextInputType.url,
                          validator: ((value) => AppValidations.isValidUrl(value!))
                      ),
                      SizedBox(height: AppSizes.padding20.h,),
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
                          onPressed: () async{
                    if(controller.formKey.currentState!.validate()) {
                      await controller.submitUrlForScan( controller.linkController.text);
                    }

                            },
                          child:
                          controller.isLoading?const CircularProgressIndicator():Text(AppTexts.check,
                            style: context.theme.primaryTextTheme.bodyLarge,
                          ),
                        ),
                      ),
                      SizedBox(height: AppSizes.padding20.h,),
                      controller.isLoading?Center(
                        child: Text(AppTexts.checkStart,
                          style: context.theme.primaryTextTheme.bodyMedium,

                        ),
                      ):const SizedBox(),
                      Text(AppTexts.hint,
                        style: context.theme.primaryTextTheme.bodySmall,
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: AppSizes.padding20.h,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 20.h,
                                width: 65.w,
                                decoration: BoxDecoration(
                                  color: AppColors.dangerColor,
                                  borderRadius: BorderRadius.circular(AppSizes.radius12.r),
                                ),
                              ),Text(AppTexts.danger,
                                style: context.theme.primaryTextTheme.bodyMedium,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 20.h,
                                width: 65.w,
                                decoration: BoxDecoration(
                                  color: AppColors.safeColor,
                                  borderRadius: BorderRadius.circular(AppSizes.radius12.r),
                                ),
                              ),Text(AppTexts.safe,
                                style: context.theme.primaryTextTheme.bodyMedium,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 20.h,
                                width: 65.w,
                                decoration: BoxDecoration(
                                  color: AppColors.warningColor,
                                  borderRadius: BorderRadius.circular(AppSizes.radius12.r),
                                ),
                              ),Text(AppTexts.warning,
                                style: context.theme.primaryTextTheme.bodyMedium,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),



                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
