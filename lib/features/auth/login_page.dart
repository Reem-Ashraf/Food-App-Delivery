import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/app_routting/app_router.dart';
import 'package:food_app/core/constants/app_assets.dart';
import 'package:food_app/core/constants/spacing.dart';
import 'package:food_app/core/theme/app_colors.dart';
import 'package:food_app/core/widget/app_button.dart';
import 'package:food_app/core/widget/app_text_form_field.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Image.asset(AppAssets.imgLoginBg, width: 500.w, height: 200.h),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                children: [
                  AppTextFormField(
                    validationError: '',
                    label: 'email',
                    text: '',
                  ),
                  AppTextFormField(
                    validationError: '',
                    label: 'password',
                    text: '',
                    isPassword: true,
                  ),
                  verticalSpace8,
                  Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(color: AppColors.black),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 100, bottom: 10),
                    child: AppButton(
                      text: 'Login',
                      onPressed: () {
                        context.push(AppPath.home);

                      },
                      height: 50,
                      width: 1000,
                      radius: 100,
                    ),
                  ),
                  //RichText for don't have an account
                  RichText(
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(color: AppColors.black),
                      ),
                      children: [
                        TextSpan(
                          text: 'Sign Up',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              color: AppColors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
