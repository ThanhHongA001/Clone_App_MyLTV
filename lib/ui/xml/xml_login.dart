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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      const SizedBox(height: 25),

                      buildHeader(),

                      const SizedBox(height: 46),

                      buildAccountField(),

                      const SizedBox(height: 22),

                      buildPasswordField(),

                      const SizedBox(height: 38),

                      buildLoginButton(),

                      const SizedBox(height: 20),

                      buildForgotPasswordButton(),

                      const SizedBox(height: 80),

                      buildBottomLogo(),

                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 9,
          child: buildTitle(),
        ),
        const SizedBox(width: 12),
        Expanded(
          flex: 11,
          child: buildIllustration(),
        ),
      ],
    );
  }

  Widget buildTitle() {
    return Text(
      AppStrings.appName,
      style: AppTextStyles.loginTitle.copyWith(
        fontSize: 38,
        height: 1.28,
        letterSpacing: 0.1,
      ),
    );
  }

  Widget buildIllustration() {
    return SizedBox(
      height: 190,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 220,
            height: 150,
            decoration: BoxDecoration(
              color: AppColors.primaryBlue.withOpacity(0.10),
              borderRadius: BorderRadius.circular(90),
            ),
          ),

          Image.asset(
            'assets/images/login_illustration.png',
            height: 180,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              return Icon(
                Icons.phone_android_rounded,
                size: 108,
                color: AppColors.primaryBlue.withOpacity(0.75),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget buildAccountField() {
    return TextField(
      controller: widget.usernameController,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      style: AppTextStyles.inputText.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      decoration: buildInputDecoration(
        hintText: AppStrings.account,
        prefixIcon: Icons.person,
      ),
    );
  }

  Widget buildPasswordField() {
    return TextField(
      controller: widget.passwordController,
      obscureText: _obscurePassword,
      textInputAction: TextInputAction.done,
      style: AppTextStyles.inputText.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      onSubmitted: (_) => widget.onLogin(),
      decoration: buildInputDecoration(
        hintText: AppStrings.password,
        prefixIcon: Icons.lock,
        suffixIcon: IconButton(
          splashRadius: 22,
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
            size: 28,
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
      hintText: hintText,
      hintStyle: AppTextStyles.inputHint.copyWith(
        fontSize: 14,
        color: AppColors.textSecondary,
      ),
      prefixIcon: Padding(
        padding: const EdgeInsets.only(left: 16, right: 10),
        child: Icon(
          prefixIcon,
          color: AppColors.inputIcon,
          size: 28,
        ),
      ),
      prefixIconConstraints: const BoxConstraints(
        minWidth: 58,
        minHeight: 56,
      ),
      suffixIcon: suffixIcon,
      filled: true,
      fillColor: AppColors.inputBackground,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 17,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(9),
        borderSide: const BorderSide(
          color: AppColors.border,
          width: 1.2,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(9),
        borderSide: const BorderSide(
          color: AppColors.activeBorder,
          width: 1.8,
        ),
      ),
    );
  }

  Widget buildLoginButton() {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: widget.onLogin,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryBlue,
          foregroundColor: AppColors.textWhite,
          elevation: 0,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
        ),
        child: Text(
          AppStrings.login,
          style: AppTextStyles.buttonText.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w700,
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
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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

  Widget buildBottomLogo() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/logo_ltv.png',
          width: 68,
          height: 68,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) {
            return Icon(
              Icons.school_rounded,
              size: 58,
              color: AppColors.logoBlue,
            );
          },
        ),

        const SizedBox(height: 14),

        Text(
          AppStrings.schoolName,
          textAlign: TextAlign.center,
          style: AppTextStyles.logoText.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: AppColors.primaryBlue,
            letterSpacing: 0.2,
          ),
        ),
      ],
    );
  }
}