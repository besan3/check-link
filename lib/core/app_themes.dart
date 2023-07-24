import 'app_configs.dart';

class AppThemes {
  static ThemeData customLightTheme = ThemeData.light().copyWith(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryColor.withOpacity(0.7)),
      scaffoldBackgroundColor: AppColors.backgroundColor,
      primaryTextTheme: TextTheme(
        titleLarge: TextStyle(
          fontFamily: AppTexts.appFontFamily,
          color: AppColors.primaryColor,
          fontWeight: FontWeight.w700,
          fontSize: AppSizes.fontSize16.sp,
        ),
        bodyLarge: TextStyle(
            fontFamily: AppTexts.appFontFamily,
            color: AppColors.backgroundColor,
            fontWeight: FontWeight.w700,
            fontSize: AppSizes.fontSize20.sp),
        bodySmall: TextStyle(
            fontFamily: AppTexts.appFontFamily,
            fontWeight: FontWeight.w700,
            color: AppColors.greenColor,
            fontSize: AppSizes.fontSize14.sp),
        titleMedium: TextStyle(
            fontFamily: AppTexts.appFontFamily,
            fontWeight: FontWeight.w500,
            color: AppColors.greenColor,
            fontSize: AppSizes.fontSize16.sp),
        bodyMedium: TextStyle(
            fontFamily: AppTexts.appFontFamily,
            fontWeight: FontWeight.w400,
            color: AppColors.splashBackgroundColor,
            fontSize: AppSizes.fontSize14.sp),
      ));
}
