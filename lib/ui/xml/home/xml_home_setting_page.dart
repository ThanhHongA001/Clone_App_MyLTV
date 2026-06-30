import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../activity/Login.dart';
import '../../activity/setting/ChangePasswordPage.dart';
import '../../activity/setting/SwitchAccountPage.dart';
import '../../../values/lib_color.dart';
import '../../../values/lib_string.dart';
import '../../../values/lib_style.dart';

class XmlHomeSettingPage extends StatelessWidget {
  const XmlHomeSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.primaryBlue,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Column(
          children: [
            giaoDienTaiKhoan(context),
            giaoDienDanhSachCaiDat(context),
          ],
        ),
      ),
    );
  }

  Widget giaoDienTaiKhoan(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        top: statusBarHeight + 52,
        left: 34,
        right: 24,
        bottom: 52,
      ),
      decoration: AppDecorations.settingHeader,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          giaoDienAnhDaiDien(),
          const SizedBox(width: 32),
          Expanded(
            child: giaoDienThongTinHocSinh(),
          ),
        ],
      ),
    );
  }

  Widget giaoDienAnhDaiDien() {
    return ClipOval(
      child: Container(
        width: 98,
        height: 98,
        color: AppColors.white.withOpacity(0.18),
        child: Image.asset(
          'assets/img/avatar_student.png',
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return const Icon(
              Icons.person,
              size: 58,
              color: AppColors.textWhite,
            );
          },
        ),
      ),
    );
  }

  Widget giaoDienThongTinHocSinh() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Vũ Danh Tùng',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.studentName,
        ),
        SizedBox(height: 12),
        Text(
          '07838 | Khối 7 | 7A0',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.studentInfo,
        ),
      ],
    );
  }

  Widget giaoDienDanhSachCaiDat(BuildContext context) {
    return Column(
      children: [
        itemCaiDat(
          icon: Icons.vpn_key_rounded,
          title: AppStrings.changePassword,
          onTap: () {
            moManHinhDoiMatKhau(context);
          },
          hienThiDuongKe: true,
        ),
        itemCaiDat(
          icon: Icons.sync_rounded,
          title: AppStrings.switchAccount,
          onTap: () {
            moManHinhChuyenTaiKhoan(context);
          },
          hienThiDuongKe: true,
        ),
        itemCaiDat(
          icon: Icons.logout_rounded,
          title: AppStrings.logout,
          onTap: () {
            dangXuat(context);
          },
          hienThiDuongKe: false,
        ),
      ],
    );
  }

  Widget itemCaiDat({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    required bool hienThiDuongKe,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 86,
        margin: const EdgeInsets.symmetric(horizontal: 34),
        decoration: hienThiDuongKe
            ? AppDecorations.settingDivider
            : const BoxDecoration(),
        child: Row(
          children: [
            SizedBox(
              width: 58,
              child: Icon(
                icon,
                size: 34,
                color: AppColors.primaryBlue,
              ),
            ),
            const SizedBox(width: 28),
            Expanded(
              child: Text(
                title,
                style: AppTextStyles.settingItem,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void moManHinhDoiMatKhau(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ChangePasswordPage(),
      ),
    );
  }

  void moManHinhChuyenTaiKhoan(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SwitchAccountPage(),
      ),
    );
  }

  void dangXuat(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const Login(),
      ),
          (route) => false,
    );
  }
}