import 'package:whatsapp/core/app_configs.dart';

class SubscribePlanWidget extends StatelessWidget {
 final Color color;
 final String plan;
 final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          boxShadow:const [ BoxShadow(
            color: Color.fromRGBO(6, 145, 157, 0.1),
            offset: Offset(0, 0),
            blurRadius: 3,
          )],
          borderRadius: BorderRadius.circular(AppSizes.radius12.r),

          border: Border.all(
            width: 2,
            color:color,
          )

      ),
      child: Padding(
        padding:  EdgeInsets.all(AppSizes.padding20.w.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(plan,
              style: context.theme.primaryTextTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            Text(price,
              style: context.theme.primaryTextTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

 const SubscribePlanWidget({super.key,
   required this.color,
   required this.plan,
   required this.price,
 });
}
