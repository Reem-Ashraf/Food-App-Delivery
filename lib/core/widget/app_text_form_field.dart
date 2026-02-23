import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/core/constants/spacing.dart';
import 'package:food_app/core/theme/app_colors.dart';
import 'package:food_app/core/theme/text_styles.dart';


class AppTextFormField extends StatefulWidget {
  final String validationError;
  final String label;
  final TextEditingController? controller;
  final ValueChanged<String>? onFieldSubmitted;
  final bool isPassword;
  final GestureTapCallback? onTap;
  final bool enabled;
  final IconData? suffixIcon;
  final Widget? prefixWidget;
  final IconData? prefixIcon;
  final bool infiniteLines;
  final Function(String)? onChange;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType keyboardType;
  final bool isFilled;
  final bool isEmail;
  final FormFieldValidator? validator;
  final String text;

  const AppTextFormField({
    super.key,
    required this.validationError,
    required this.label,
    this.controller,
    this.onFieldSubmitted,
    this.isPassword = false,
    this.onTap,
    this.enabled = true,
    this.suffixIcon,
    this.prefixWidget,
    this.prefixIcon,
    this.infiniteLines = false,
    this.isFilled = false,
    this.isEmail = false,
    this.onChange,
    this.inputFormatters,
    this.keyboardType = TextInputType.text,
    this.validator,
    required this.text,
  });

  @override
  State<AppTextFormField> createState() => _PrimaryTextFormFieldState();
}

class _PrimaryTextFormFieldState extends State<AppTextFormField> {
  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          style: TextStyles.regular16,
        ),
        verticalSpace8,
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: TextFormField(
            onTap: widget.onTap,
            enabled: widget.enabled,
            keyboardType: widget.keyboardType,
            inputFormatters: widget.inputFormatters,
            controller: widget.controller,
            style: TextStyles.regular16,
            obscureText: widget.isPassword ? isPasswordVisible : false,
            validator: widget.validator ??
                    (value) {
                  if (widget.isEmail) {
                    if (!value!.contains('@') || !value.contains('.')) {
                      return widget.validationError;
                    }

                    return null;
                  }

                  if (value!.length < 3) {
                    return widget.validationError;
                  }

                  return null;
                },
            decoration: InputDecoration(
              errorStyle: TextStyles.regular12.copyWith(
                color: Colors.red,
              ),
              hintText: widget.label,
              hintStyle: TextStyles.regular16Grey,
              filled: widget.isFilled,
              fillColor:
              widget.isFilled ? AppColors.textFieldFillColor : null,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Colors.red,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: AppColors.borderDarkGrey,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Colors.red,
                ),
              ),
              prefixIcon: widget.prefixWidget ??
                  (widget.prefixIcon != null
                      ? Icon(
                    widget.prefixIcon,
                  )
                      : null),
              suffixIcon: (widget.suffixIcon != null
                  ? Icon(
                      widget.suffixIcon,
                    )
                  : widget.isPassword
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                          icon: Icon(
                            isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        )
                      : null),
            ),
          ),
        ),
      ],
    );
  }
}
