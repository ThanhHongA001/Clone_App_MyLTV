import 'package:flutter/material.dart';
import 'lib_color.dart';

class AppTextStyles {
  AppTextStyles._();

  // Login title
  static const TextStyle loginTitle = TextStyle(
    fontSize: 38,
    height: 1.35,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
  );

  // Header title
  static const TextStyle screenTitle = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryBlue,
  );

  static const TextStyle logoText = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w800,
    color: AppColors.logoBlue,
    letterSpacing: 0.2,
  );

  // Input
  static const TextStyle inputText = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  static const TextStyle inputHint = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
  );

  // Button
  static const TextStyle buttonText = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.textWhite,
  );

  static const TextStyle linkText = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryBlue,
  );

  // News item
  static const TextStyle newsSource = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w800,
    color: AppColors.textPrimary,
  );

  static const TextStyle newsStudentName = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w800,
    color: AppColors.textPrimary,
  );

  static const TextStyle newsDate = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w800,
    color: AppColors.textPrimary,
  );

  static const TextStyle newsCategory = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w800,
    color: AppColors.categoryAttendance,
  );

  static const TextStyle newsBody = TextStyle(
    fontSize: 21,
    height: 1.45,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
  );

  static const TextStyle newsBodyBold = TextStyle(
    fontSize: 21,
    height: 1.45,
    fontWeight: FontWeight.w800,
    color: AppColors.textPrimary,
  );

  // Grid card
  static const TextStyle gridCardTitle = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w800,
    color: AppColors.textWhite,
  );

  // Bottom navigation
  static const TextStyle navActive = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w800,
    color: AppColors.navActive,
  );

  static const TextStyle navInactive = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w800,
    color: AppColors.navInactive,
  );

  // Setting screen
  static const TextStyle studentName = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w800,
    color: AppColors.textWhite,
  );

  static const TextStyle studentInfo = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: AppColors.textWhite,
  );

  static const TextStyle settingItem = TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.w800,
    color: AppColors.textPrimary,
  );
}

class AppDimensions {
  AppDimensions._();

  // Padding
  static const double paddingXS = 4;
  static const double paddingS = 8;
  static const double paddingM = 12;
  static const double paddingL = 16;
  static const double paddingXL = 24;
  static const double paddingXXL = 32;

  // Radius
  static const double radiusS = 6;
  static const double radiusM = 10;
  static const double radiusL = 14;
  static const double radiusXL = 22;

  // Icon size
  static const double iconS = 18;
  static const double iconM = 24;
  static const double iconL = 32;
  static const double iconXL = 46;

  // Login
  static const double loginInputHeight = 66;
  static const double loginButtonHeight = 58;

  // Grid card
  static const double gridCardHeight = 118;
  static const double gridCardRadius = 8;
  static const double gridIconCircleSize = 70;

  // Bottom navigation
  static const double bottomNavHeight = 74;
}

class AppDecorations {
  AppDecorations._();

  static BoxDecoration pageBackground = const BoxDecoration(
    color: AppColors.background,
  );

  static BoxDecoration loginInputActive = BoxDecoration(
    color: AppColors.inputBackground,
    borderRadius: BorderRadius.circular(AppDimensions.radiusM),
    border: Border.all(color: AppColors.activeBorder, width: 1.7),
  );

  static BoxDecoration loginInputNormal = BoxDecoration(
    color: AppColors.inputBackground,
    borderRadius: BorderRadius.circular(AppDimensions.radiusM),
    border: Border.all(color: AppColors.border, width: 1.2),
  );

  static BoxDecoration loginButton = BoxDecoration(
    color: AppColors.primaryBlue,
    borderRadius: BorderRadius.circular(AppDimensions.radiusM),
  );

  static BoxDecoration newsCard = const BoxDecoration(
    color: AppColors.white,
    border: Border(bottom: BorderSide(color: AppColors.divider, width: 1)),
  );

  static BoxDecoration bottomBar = const BoxDecoration(
    color: AppColors.white,
    boxShadow: [
      BoxShadow(color: AppColors.shadow, blurRadius: 8, offset: Offset(0, -2)),
    ],
  );

  static BoxDecoration settingHeader = const BoxDecoration(
    color: AppColors.primaryBlue,
  );

  static BoxDecoration settingDivider = const BoxDecoration(
    border: Border(bottom: BorderSide(color: AppColors.divider, width: 1)),
  );

  static BoxDecoration gridCard(Color color) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(AppDimensions.gridCardRadius),
    );
  }

  static BoxDecoration gridIconCircle = const BoxDecoration(
    shape: BoxShape.circle,
    color: AppColors.cardCircleOverlay,
  );
}

class AppInputStyles {
  AppInputStyles._();

  static InputDecoration loginInputDecoration({
    required String hintText,
    required IconData prefixIcon,
    Widget? suffixIcon,
  }) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: AppTextStyles.inputHint,
      prefixIcon: Icon(
        prefixIcon,
        color: AppColors.inputIcon,
        size: AppDimensions.iconL,
      ),
      suffixIcon: suffixIcon,
      filled: true,
      fillColor: AppColors.inputBackground,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.paddingL,
        vertical: AppDimensions.paddingL,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radiusM),
        borderSide: const BorderSide(color: AppColors.border, width: 1.2),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radiusM),
        borderSide: const BorderSide(color: AppColors.activeBorder, width: 1.7),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radiusM),
        borderSide: const BorderSide(color: AppColors.error, width: 1.2),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radiusM),
        borderSide: const BorderSide(color: AppColors.error, width: 1.7),
      ),
    );
  }
}

class AppButtonStyles {
  AppButtonStyles._();

  static ButtonStyle primaryButton = ElevatedButton.styleFrom(
    backgroundColor: AppColors.primaryBlue,
    foregroundColor: AppColors.textWhite,
    minimumSize: const Size(double.infinity, AppDimensions.loginButtonHeight),
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppDimensions.radiusM),
    ),
    textStyle: AppTextStyles.buttonText,
  );
}
