import 'app_configs.dart';

class DefaultTextForm extends StatelessWidget {
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final ValueChanged<String>? onFieldSubmitted;
  final ValueChanged<String>? onChanged;
  final bool isPassword;
  final FormFieldValidator<String> validator;
  final GestureTapCallback? onTap;
  final String? label;
  final String? hint;
  final IconData? iconData;
  final IconData? iconDataSuffixx;
  final bool isenable;
  final bool hasPrefixIcon;
  final bool filled;
  final bool readOnly;
  DefaultTextForm(
      {required this.textEditingController,
      required this.textInputType,
      this.onFieldSubmitted,
      this.onChanged,
      this.onTap,
      this.isPassword = false,
      required this.validator,
      this.label,
      this.hint,
      this.iconData,
      this.iconDataSuffixx,
      this.isenable = true,
      this.hasPrefixIcon = false,
      this.filled = false,
      this.readOnly = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.radius40.r),
      ),
      child: TextFormField(
        textAlign: TextAlign.start,
        readOnly: readOnly,
        controller: textEditingController,
        keyboardType: textInputType,
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
        validator: validator,
        onTap: onTap,
        enabled: isenable,
        obscureText: isPassword,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColors.primaryColor,
        ),
        decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.backgroundColor,
            contentPadding: EdgeInsets.all(AppSizes.padding8.h.w),
            label: Text(label ?? ''),
            hintText: hint,
            labelStyle: TextStyle(
              fontSize: AppSizes.fontSize16.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.hintColor,
            ),

            // icon: Icon(iconData),
            hintStyle: TextStyle(
              fontSize: AppSizes.fontSize14.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.hintColor,
            ),
            prefixIcon: hasPrefixIcon
                ? Icon(iconData, color: AppColors.secondaryColor)
                : null,
            prefixIconColor: Colors.white70,
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppSizes.radius40.r),
                borderSide:
                    const BorderSide(color: AppColors.primaryColor, width: 4)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppSizes.radius40.r),
                borderSide:
                    const BorderSide(color: AppColors.primaryColor, width: 4)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppSizes.radius40.r),
                borderSide:
                    const BorderSide(color: AppColors.primaryColor, width: 4))
        ),
      ),
    );
  }
}
