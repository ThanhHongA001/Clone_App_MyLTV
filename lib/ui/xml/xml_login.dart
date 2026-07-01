import 'package:flutter/material.dart';

import '../../values/lib_color.dart';
import '../../values/lib_string.dart';
import '../../values/lib_style.dart';

class XmlLogin extends StatefulWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final VoidCallback onLogin;
  final VoidCallback? onForgotPassword;

  const XmlLogin({
    super.key,
    required this.usernameController,
    required this.passwordController,
    required this.onLogin,
    this.onForgotPassword,
  });

  @override
  State<XmlLogin> createState() => _XmlLoginState();
}

class _XmlLoginState extends State<XmlLogin> {
  bool _obscurePassword = true;

  static const double _formWidthFactor = 0.94;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final bool isSmallHeight = constraints.maxHeight < 720;

            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: isSmallHeight ? 14 : 22),

                    buildHeader(
                      height: isSmallHeight ? 190 : 220,
                      imageTop: isSmallHeight ? 28 : 36,
                      compact: isSmallHeight,
                    ),

                    SizedBox(height: isSmallHeight ? 22 : 32),

                    buildAccountField(),

                    SizedBox(height: isSmallHeight ? 14 : 18),

                    buildPasswordField(),

                    SizedBox(height: isSmallHeight ? 22 : 30),

                    buildLoginButton(),

                    const SizedBox(height: 14),

                    buildForgotPasswordButton(),

                    SizedBox(height: isSmallHeight ? 28 : 60),

                    buildBottomLogo(
                      compact: isSmallHeight,
                    ),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget buildHeader({
    required double height,
    required double imageTop,
    required bool compact,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double titleWidth =
        (constraints.maxWidth * 0.82).clamp(190.0, 235.0).toDouble();

        return SizedBox(
          height: height,
          width: double.infinity,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                right: -6,
                top: imageTop,
                child: Opacity(
                  opacity: 0.90,
                  child: buildIllustration(
                    compact: compact,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: SizedBox(
                  width: titleWidth,
                  child: buildTitle(
                    compact: compact,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget buildTitle({
    bool compact = false,
  }) {
    return Text(
      AppStrings.appName,
      softWrap: true,
      overflow: TextOverflow.visible,
      style: AppTextStyles.loginTitle.copyWith(
        fontSize: compact ? 30 : 32,
        height: 1.22,
        letterSpacing: 0.05,
      ),
    );
  }

  Widget buildIllustration({
    bool compact = false,
  }) {
    final double boxSize = compact ? 148 : 160;
    final double circleSize = compact ? 128 : 138;
    final double imageHeight = compact ? 116 : 128;
    final double fallbackIconSize = compact ? 84 : 92;

    return SizedBox(
      width: boxSize,
      height: boxSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: circleSize,
            height: circleSize,
            decoration: BoxDecoration(
              color: AppColors.primaryBlue.withOpacity(0.10),
              borderRadius: BorderRadius.circular(90),
            ),
          ),
          Image.asset(
            'assets/images/login_illustration.png',
            height: imageHeight,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              return Icon(
                Icons.phone_android_rounded,
                size: fallbackIconSize,
                color: AppColors.primaryBlue.withOpacity(0.75),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget buildCompactFormItem({
    required Widget child,
  }) {
    return FractionallySizedBox(
      widthFactor: _formWidthFactor,
      child: child,
    );
  }

  Widget buildAccountField() {
    return buildCompactFormItem(
      child: SizedBox(
        height: 52,
        child: TextField(
          controller: widget.usernameController,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          textAlignVertical: TextAlignVertical.center,
          style: AppTextStyles.inputText.copyWith(
            fontSize: 13.5,
            fontWeight: FontWeight.w500,
          ),
          decoration: buildInputDecoration(
            hintText: AppStrings.account,
            prefixIcon: Icons.person,
          ),
        ),
      ),
    );
  }

  Widget buildPasswordField() {
    return buildCompactFormItem(
      child: SizedBox(
        height: 52,
        child: TextField(
          controller: widget.passwordController,
          obscureText: _obscurePassword,
          textInputAction: TextInputAction.done,
          textAlignVertical: TextAlignVertical.center,
          style: AppTextStyles.inputText.copyWith(
            fontSize: 13.5,
            fontWeight: FontWeight.w500,
          ),
          onSubmitted: (_) => widget.onLogin(),
          decoration: buildInputDecoration(
            hintText: AppStrings.password,
            prefixIcon: Icons.lock,
            suffixIcon: IconButton(
              splashRadius: 20,
              constraints: const BoxConstraints.tightFor(
                width: 50,
                height: 52,
              ),
              padding: EdgeInsets.zero,
              onPressed: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },
              icon: Icon(
                _obscurePassword
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                color: AppColors.inputIconLight,
                size: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration buildInputDecoration({
    required String hintText,
    required IconData prefixIcon,
    Widget? suffixIcon,
  }) {
    return InputDecoration(
      isDense: true,
      hintText: hintText,
      hintStyle: AppTextStyles.inputHint.copyWith(
        fontSize: 13.5,
        color: AppColors.textSecondary,
      ),
      prefixIcon: Padding(
        padding: const EdgeInsets.only(left: 15, right: 8),
        child: Icon(
          prefixIcon,
          color: AppColors.inputIcon,
          size: 24,
        ),
      ),
      prefixIconConstraints: const BoxConstraints(
        minWidth: 50,
        minHeight: 52,
      ),
      suffixIcon: suffixIcon,
      suffixIconConstraints: const BoxConstraints(
        minWidth: 50,
        minHeight: 52,
      ),
      filled: true,
      fillColor: AppColors.inputBackground,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 13,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: AppColors.border,
          width: 1.1,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: AppColors.activeBorder,
          width: 1.6,
        ),
      ),
    );
  }

  Widget buildLoginButton() {
    return buildCompactFormItem(
      child: SizedBox(
        width: double.infinity,
        height: 52,
        child: ElevatedButton(
          onPressed: widget.onLogin,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryBlue,
            foregroundColor: AppColors.textWhite,
            elevation: 0,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(
            AppStrings.login,
            style: AppTextStyles.buttonText.copyWith(
              fontSize: 13.5,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildForgotPasswordButton() {
    return TextButton(
      onPressed: widget.onForgotPassword ?? () {},
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primaryBlue,
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
      ),
      child: Text(
        AppStrings.forgotPassword,
        style: AppTextStyles.linkText.copyWith(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget buildBottomLogo({
    bool compact = false,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/logo_ltv.png',
          width: compact ? 54 : 68,
          height: compact ? 54 : 68,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) {
            return Icon(
              Icons.school_rounded,
              size: compact ? 48 : 58,
              color: AppColors.logoBlue,
            );
          },
        ),
        SizedBox(height: compact ? 8 : 14),
        Text(
          AppStrings.schoolName,
          textAlign: TextAlign.center,
          style: AppTextStyles.logoText.copyWith(
            fontSize: compact ? 10 : 11,
            fontWeight: FontWeight.w700,
            color: AppColors.primaryBlue,
            letterSpacing: 0.2,
          ),
        ),
      ],
    );
  }
}