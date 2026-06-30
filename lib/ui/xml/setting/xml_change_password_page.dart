import 'package:flutter/material.dart';

import '../../../values/lib_color.dart';
import '../../../values/lib_string.dart';
import '../../../values/lib_style.dart';

class XmlChangePasswordPage extends StatefulWidget {
  const XmlChangePasswordPage({super.key});

  @override
  State<XmlChangePasswordPage> createState() => _XmlChangePasswordPageState();
}

class _XmlChangePasswordPageState extends State<XmlChangePasswordPage> {
  final TextEditingController matKhauCuController = TextEditingController();
  final TextEditingController matKhauMoiController = TextEditingController();
  final TextEditingController nhapLaiMatKhauController = TextEditingController();

  bool anMatKhauCu = true;
  bool anMatKhauMoi = true;
  bool anNhapLaiMatKhau = true;

  @override
  void dispose() {
    matKhauCuController.dispose();
    matKhauMoiController.dispose();
    nhapLaiMatKhauController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: appBarDoiMatKhau(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            giaoDienTieuDe(),
            giaoDienFormDoiMatKhau(),
            giaoDienNutXacNhan(),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget appBarDoiMatKhau() {
    return AppBar(
      backgroundColor: AppColors.primaryBlue,
      foregroundColor: AppColors.textWhite,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        'Thay đổi mật khẩu',
        style: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget giaoDienTieuDe() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(24, 28, 24, 12),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cập nhật mật khẩu',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w800,
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Vui lòng nhập mật khẩu hiện tại và mật khẩu mới để tiếp tục.',
            style: TextStyle(
              fontSize: 16,
              height: 1.4,
              fontWeight: FontWeight.w500,
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget giaoDienFormDoiMatKhau() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 12, 24, 20),
      child: Column(
        children: [
          truongNhapMatKhau(
            controller: matKhauCuController,
            hintText: 'Mật khẩu hiện tại',
            anMatKhau: anMatKhauCu,
            onDoiTrangThai: () {
              setState(() {
                anMatKhauCu = !anMatKhauCu;
              });
            },
          ),
          const SizedBox(height: 16),
          truongNhapMatKhau(
            controller: matKhauMoiController,
            hintText: 'Mật khẩu mới',
            anMatKhau: anMatKhauMoi,
            onDoiTrangThai: () {
              setState(() {
                anMatKhauMoi = !anMatKhauMoi;
              });
            },
          ),
          const SizedBox(height: 16),
          truongNhapMatKhau(
            controller: nhapLaiMatKhauController,
            hintText: 'Nhập lại mật khẩu mới',
            anMatKhau: anNhapLaiMatKhau,
            onDoiTrangThai: () {
              setState(() {
                anNhapLaiMatKhau = !anNhapLaiMatKhau;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget truongNhapMatKhau({
    required TextEditingController controller,
    required String hintText,
    required bool anMatKhau,
    required VoidCallback onDoiTrangThai,
  }) {
    return TextField(
      controller: controller,
      obscureText: anMatKhau,
      style: AppTextStyles.inputText,
      decoration: AppInputStyles.loginInputDecoration(
        hintText: hintText,
        prefixIcon: Icons.lock_outline,
        suffixIcon: IconButton(
          onPressed: onDoiTrangThai,
          icon: Icon(
            anMatKhau ? Icons.visibility_off_outlined : Icons.visibility_outlined,
            color: AppColors.inputIcon,
          ),
        ),
      ),
    );
  }

  Widget giaoDienNutXacNhan() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ElevatedButton(
        style: AppButtonStyles.primaryButton,
        onPressed: () {
          kiemTraVaDoiMatKhau();
        },
        child: const Text('Xác nhận'),
      ),
    );
  }

  void kiemTraVaDoiMatKhau() {
    final String matKhauCu = matKhauCuController.text.trim();
    final String matKhauMoi = matKhauMoiController.text.trim();
    final String nhapLaiMatKhau = nhapLaiMatKhauController.text.trim();

    if (matKhauCu.isEmpty || matKhauMoi.isEmpty || nhapLaiMatKhau.isEmpty) {
      hienThiThongBao('Vui lòng nhập đầy đủ thông tin');
      return;
    }

    if (matKhauMoi.length < 6) {
      hienThiThongBao('Mật khẩu mới phải có ít nhất 6 ký tự');
      return;
    }

    if (matKhauMoi != nhapLaiMatKhau) {
      hienThiThongBao('Mật khẩu nhập lại không khớp');
      return;
    }

    hienThiThongBao('Đổi mật khẩu thành công');
    Navigator.pop(context);
  }

  void hienThiThongBao(String noiDung) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(noiDung),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}