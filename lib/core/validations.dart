import 'package:whatsapp/core/app_configs.dart';

class AppValidations {
  ///Validate Email

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email address.';
    }
    final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Please enter a valid email address.';
    }
    return null;
  }

  ///Validate Password

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password.';
    }

    if (value.length < 6) {
      return 'Password must be at least 6 characters long.';
    }

    return null; // Return null if the value is valid.
  }

  ///Validate Name

  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your name.';
    }
    return null;
  }

  ///Validate Key

  static String? validateKey(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your key.';
    }
    return null;
  }

  static String? validateCode(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your Code.';
    }
    return null;
  }

  static String? validateProductId(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your Product ID.';
    }
    return null;
  }

  static String? validateService(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    return null;
  }

  static String? validateId(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your Droplet Id.';
    }
    return null;
  }

  ///Validate Search
  static String? isValidUrl(String value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email address.';
    }
    const pattern = r'^(http(s)?://)?(www\.)?.+[.][a-zA-Z]{2,}';
    final regExp = RegExp(pattern);
    if (!regExp.hasMatch(value)) {
      return 'أدخل لينك صالح';
    }
    return null;
    // Test if the URL matches the pattern
  }

  static String? validateSearch(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter name or email to search for';
    }
    return null;
  }

  static showSnake(String message) {
    Get.snackbar(
      '',
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: AppColors.primaryColor,
      colorText: AppColors.backgroundColor,
      padding: EdgeInsets.all(AppSizes.padding20.h.w),
      margin: EdgeInsets.all(AppSizes.padding20.h.w),
    );
  }
}
