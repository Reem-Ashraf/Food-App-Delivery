import 'package:flutter/material.dart';

class AppColors {
  ///* Transparent colors
  static const Color transparent = Colors.transparent;

  static const Color mainColor = Color.fromRGBO(107, 19, 227, 1);
  static const Color primaryColor= Color(0xFFca7a22);
  static const Color darkBrown= Color(0xFF8c5522);

  ///* Contrast colors
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color red = Color(0xFFE50000);
  static const Color purple = Color(0xFF8A559B);
  static const Color cyan = Color(0xFF0BAFFF);
  static const Color green = Color(0xFF48B779);
  static const Color yellow = Color(0xFFD5B600);
  static const Color orange = Color(0xFFF67127);
  static const Color textColor = Color.fromRGBO(47, 48, 46, 1);
  static Color secondary = const Color.fromRGBO(112, 112, 112, 1.0);
  static Color secondaryVariant = const Color.fromRGBO(158, 158, 158, 1.0);
  static Color bottomNavUnSelected = const Color.fromRGBO(158, 158, 158, 1.0);
  static Color secondaryGrey = const Color.fromRGBO(245, 245, 245, 1.0);
  static Color border = const Color(0xFFeceee9);

  static const Color borderGrey = Color.fromRGBO(206, 206, 206, 1);

  static const Color borderDarkGrey = Color.fromRGBO(216, 216, 216, 1);

  static Color rateTextContainerColor = const Color.fromRGBO(0, 103, 153, 1);

  // sign in with google button color
  static const Color googleButtonColor = Color(0xFF4285F4);

  static const Color darkerGreyColor = Color(0xFF989898);
  static const Color darkGreyColor = Color(0xFFD9D9D9);
  static const Color greyColor = Color(0xFFE9E8E7);
  static const Color lightGreyColor = Color(0xFFECECEC);
  static Color regularBlack = const Color.fromRGBO(45, 49, 66, 1.0);
  static Color backgroundColor = const Color(0xfff7f7f9);
  static Color textGrayColor = const Color(0xffa9a1a4);
  static Color brownColor = const Color(0xff595858);
  static String greenColor = '07B055';
  static const Color blueColor = Color(0xFF0E72ED);
  static String transparentBg = 'F2F4F7';
  static Color whiteColor = Colors.white;
  static Color textFieldFillColor = const Color(0xFFF2F4F7);
  static Color stepProgressIndicatorBackground = const Color(0xFFF1F1F1);

  ///`Primary colors`
  static const Color primaryGreen = Color(0xFF7BC44B);
  static const Color primaryBlack = Color(0xFF161816);

  ///`Medium colors`
  static const Color mediumAquamarine = Color(0xFF7CC99E);

  ///`Scaffold background`
  static Color scaffoldBackground = const Color.fromRGBO(255, 255, 255, 1);

  ///`Shades of gray`
  static const Color gray10 = Color(0xFFF2F4F0);
  static const Color gray15 = Color(0xffFAFBF9);
  static const Color gray20 = Color(0xFFEBEEEA);
  static const Color gray30 = Color(0xFFC8CCC7);
  static const Color gray40 = Color(0xFFAEB4AC);
  static const Color gray50 = Color(0xFF949B91);
  static const Color gray60 = Color(0xFF7A8377);
  static const Color gray70 = Color(0xFF61685F);
  static const Color gray80 = Color(0xFF484D46);
  static const Color gray85 = Color(0xFF3A4235);
  static const Color gray90 = Color(0xFF2F332E);
  static const Color gray100 = Color(0xFF161816);

  ///`Shades of radio button`
  static const Color radioButtonColor = Color(0xFFE0E2DF);
  static const Color counterColor = Color(0xFFE8ECE5);

  ///`Linear gradient colors`

  static const LinearGradient primaryLinearGradient = LinearGradient(
    begin: AlignmentDirectional.centerStart,
    end: AlignmentDirectional.centerEnd,
    colors: [
      Color(0xFF9FD03C),
      Color(0xFF7BC44B),
    ],
  );
  static const LinearGradient primaryGrayGradientWholeColor = LinearGradient(
    begin: AlignmentDirectional.centerStart,
    end: AlignmentDirectional.centerEnd,
    colors: [
      gray10,
      gray10,
    ],
  );
  static LinearGradient primaryLightGrayGradientWholeColor = LinearGradient(
    begin: AlignmentDirectional.centerStart,
    end: AlignmentDirectional.centerEnd,
    colors: [
      gray10.withOpacity(0.4),
      gray10.withOpacity(0.4),
    ],
  );

  static LinearGradient lightGrayGradientWholeColor = const LinearGradient(
    begin: AlignmentDirectional.centerStart,
    end: AlignmentDirectional.centerEnd,
    colors: [
      AppColors.counterColor,
      AppColors.counterColor,
    ],
  );

  ///`Primary color swatches`

  static MaterialColor primaryMainSwatch = MaterialColor(
    mainColor.value,
    const <int, Color>{
      50: Color.fromRGBO(136, 14, 79, .1),
      100: Color.fromRGBO(136, 14, 79, .2),
      200: Color.fromRGBO(136, 14, 79, .3),
      300: Color.fromRGBO(136, 14, 79, .4),
      400: Color.fromRGBO(136, 14, 79, .5),
      500: Color.fromRGBO(136, 14, 79, .6),
      600: Color.fromRGBO(136, 14, 79, .7),
      700: Color.fromRGBO(136, 14, 79, .8),
      800: Color.fromRGBO(136, 14, 79, .9),
      900: Color.fromRGBO(136, 14, 79, 1),
    },
  );
}
