import 'package:whatsapp/core/app_configs.dart';
import 'package:whatsapp/core/app_routes.dart';
import 'package:whatsapp/featuers/subscribe/manager/subscribe_controller.dart';
import 'package:whatsapp/featuers/subscribe/widgets/subscribe_widgets.dart';

class ChoosePlanScreen extends GetView<SubscribeController> {
  const ChoosePlanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.backgroundColor,
        title: Text(
          AppTexts.recommendedPlans,
          style: context.theme.primaryTextTheme.titleLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(

          child: Padding(
            padding:  EdgeInsets.all(AppSizes.padding20.w.h),
            child:  Column(
                  children: [
                    Text(AppTexts.choosePlans,
                      style: context.theme.primaryTextTheme.bodySmall,
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: AppSizes.padding40.h,),
                    ListView.separated(
                      shrinkWrap: true,
                        itemBuilder: (context,index)=>  GestureDetector(
                          onTap: ()=>controller.selectService(index),
                          child: GetBuilder<SubscribeController>(
                            builder: (controller) {
                              return SubscribePlanWidget(
                                  color: controller.selectedIndex==index?AppColors.splashBackgroundColor:AppColors.backgroundColor,
                                  plan: controller.plans[index],
                                  price: controller.prices[index]);
                            }
                          ),),

                        separatorBuilder: (context,index)=>SizedBox(height: AppSizes.padding20.h,),

                        itemCount: controller.plans.length),
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
                          Get.toNamed(AppRoutes.home);


                        },
                        child:
                        Text(AppTexts.subscribe,
                          style: context.theme.primaryTextTheme.bodyLarge,
                        ),
                      ),
                    ),



                  ],
                )

          ),
        ),
      ),

    );
  }
}
