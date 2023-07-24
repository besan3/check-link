import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp/core/app_configs.dart';
import 'package:whatsapp/core/app_widgets.dart';
import 'package:whatsapp/featuers/home/manager/app_controller.dart';

class CheckResultScreen extends StatelessWidget {
 final Map<String, dynamic> result;

 const CheckResultScreen({super.key,
   required this.result,
 });
  @override
  Widget build(BuildContext context) {

    return
      GetBuilder<AppController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: AppColors.backgroundColor,
            title: Text(
              AppTexts.checkResult,
              style: context.theme.primaryTextTheme.titleLarge,
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.all(AppSizes.padding20.w.h),
              child: SafeArea(
                child: Column(
                  children: [
                    DefaultTextForm(
                        textEditingController: controller.linkController,
                        textInputType: TextInputType.url,
                        hint: result['url'],
                        readOnly: true,
                        validator: ((value) => '')
                    ),
                    SizedBox(height: AppSizes.padding20.h,),
                    Image.network(result['screenshot_path']),
                    SizedBox(height: AppSizes.padding20.h,),

                    result['disposition']=='clean'? Image.asset(AppImages.safeLinkImage,
                   height: AppSizes.imageSize.h,
                   width: AppSizes.imageSize.w,
                    ):Image.asset(AppImages.dangerLinkImage,
                      height: AppSizes.imageSize.h,
                      width: AppSizes.imageSize.w,
                    ),
                    SizedBox(height: AppSizes.padding20.h,),

                    result['disposition']=='clean'?Text(AppTexts.safeSite,
                    style: context.theme.primaryTextTheme.titleLarge?.copyWith(color: AppColors.safeColor),
                    ):Text(AppTexts.dangerSite,
                      style: context.theme.primaryTextTheme.titleLarge?.copyWith(color: AppColors.dangerColor),
                    ),
                    SizedBox(height: AppSizes.padding20.h,),
                    //
                    // result['disposition']=='clean'? Container(
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(AppSizes.radius40.r),
                    //       color: AppColors.safeColor
                    //   ),
                    //   child: MaterialButton(
                    //     minWidth:double.infinity.w,
                    //     padding:
                    //     EdgeInsets.all(AppSizes.padding8.w.h),
                    //     shape:RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(AppSizes.radius40.r),
                    //     ),
                    //     onPressed: () async{
                    //
                    //       String url = "https://www.fluttercampus.com";
                    //       var urllaunchable = await canLaunch(url); //canLaunch is from url_launcher package
                    //       if(urllaunchable){
                    //         await launch(url); //launch is from url_launcher package to launch URL
                    //       }else{
                    //         print("URL can't be launched.");
                    //       }
                    //     },
                    //     child:
                    //   Text(AppTexts.goToSite,
                    //       style: context.theme.primaryTextTheme.bodyLarge,
                    //     ),
                    //   ),
                    // ):SizedBox(),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }


}
