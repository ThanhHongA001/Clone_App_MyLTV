import 'package:flutter/material.dart';

import '../../../values/lib_color.dart';
import '../../../values/lib_string.dart';
import '../../../values/lib_style.dart';

class XmlServiceMeal extends StatelessWidget {
  const XmlServiceMeal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: appBarDichVu(),
      body: Column(
        children: [
          giaoDienIcon(),
          giaoDienNoiDung(),
        ],
      ),
    );
  }

  PreferredSizeWidget appBarDichVu() {
    return AppBar(
      backgroundColor: AppColors.background,
      elevation: 0,
      centerTitle: true,
      iconTheme: const IconThemeData(
        color: AppColors.primaryBlue,
      ),
      title: Text(
        AppStrings.meal,
        style: AppTextStyles.screenTitle.copyWith(fontSize: 24),
      ),
    );
  }

  Widget giaoDienIcon() {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      width: 110,
      height: 110,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.serviceMeal,
      ),
      child: const Icon(
        Icons.star,
        size: 52,
        color: AppColors.textWhite,
      ),
    );
  }

  Widget giaoDienNoiDung() {
    return const Padding(
      padding: EdgeInsets.all(24),
      child: Text(
        'Màn hình quản lý suất ăn.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimary,
        ),
      ),
    );
  }
}