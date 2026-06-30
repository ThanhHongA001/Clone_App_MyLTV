import 'package:flutter/material.dart';

import '../../activity/Login.dart';
import '../../../values/lib_color.dart';
import '../../../values/lib_string.dart';
import '../../../values/lib_style.dart';

class XmlSwitchAccountPage extends StatefulWidget {
  const XmlSwitchAccountPage({super.key});

  @override
  State<XmlSwitchAccountPage> createState() => _XmlSwitchAccountPageState();
}

class _XmlSwitchAccountPageState extends State<XmlSwitchAccountPage> {
  int taiKhoanDangChon = 0;

  final List<Map<String, String>> danhSachTaiKhoan = [
    {
      'ten': 'Vũ Danh Tùng',
      'thongTin': '07838 | Khối 7 | 7A0',
      'trangThai': 'Đang sử dụng',
    },
    {
      'ten': 'Nguyễn Minh Anh',
      'thongTin': '08215 | Khối 8 | 8A1',
      'trangThai': 'Tài khoản đã lưu',
    },
    {
      'ten': 'Trần Gia Huy',
      'thongTin': '09126 | Khối 6 | 6A2',
      'trangThai': 'Tài khoản đã lưu',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: appBarChuyenTaiKhoan(),
      body: Column(
        children: [
          giaoDienTieuDe(),
          giaoDienDanhSachTaiKhoan(),
          giaoDienNutThaoTac(),
        ],
      ),
    );
  }

  PreferredSizeWidget appBarChuyenTaiKhoan() {
    return AppBar(
      backgroundColor: AppColors.primaryBlue,
      foregroundColor: AppColors.textWhite,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        'Chuyển đổi tài khoản',
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
            'Danh sách tài khoản',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w800,
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Chọn tài khoản học sinh cần sử dụng trên thiết bị này.',
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

  Widget giaoDienDanhSachTaiKhoan() {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
        itemCount: danhSachTaiKhoan.length,
        itemBuilder: (context, index) {
          final Map<String, String> taiKhoan = danhSachTaiKhoan[index];

          return itemTaiKhoan(
            index: index,
            ten: taiKhoan['ten'] ?? '',
            thongTin: taiKhoan['thongTin'] ?? '',
            trangThai: taiKhoan['trangThai'] ?? '',
            dangChon: taiKhoanDangChon == index,
          );
        },
      ),
    );
  }

  Widget itemTaiKhoan({
    required int index,
    required String ten,
    required String thongTin,
    required String trangThai,
    required bool dangChon,
  }) {
    return InkWell(
      onTap: () {
        setState(() {
          taiKhoanDangChon = index;
        });
      },
      borderRadius: BorderRadius.circular(AppDimensions.radiusL),
      child: Container(
        margin: const EdgeInsets.only(bottom: 14),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(AppDimensions.radiusL),
          border: Border.all(
            color: dangChon ? AppColors.primaryBlue : AppColors.divider,
            width: dangChon ? 2 : 1,
          ),
          boxShadow: const [
            BoxShadow(
              color: AppColors.shadow,
              blurRadius: 8,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: AppColors.primaryBlue.withOpacity(0.12),
              child: const Icon(
                Icons.person,
                color: AppColors.primaryBlue,
                size: 34,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: giaoDienThongTinTaiKhoan(
                ten: ten,
                thongTin: thongTin,
                trangThai: trangThai,
              ),
            ),
            Icon(
              dangChon ? Icons.check_circle : Icons.radio_button_unchecked,
              color: dangChon ? AppColors.primaryBlue : AppColors.textHint,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }

  Widget giaoDienThongTinTaiKhoan({
    required String ten,
    required String thongTin,
    required String trangThai,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ten,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w800,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          thongTin,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.textSecondary,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          trangThai,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: AppColors.primaryBlue,
          ),
        ),
      ],
    );
  }

  Widget giaoDienNutThaoTac() {
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 10, 24, 24),
      decoration: const BoxDecoration(
        color: AppColors.background,
        border: Border(
          top: BorderSide(
            color: AppColors.divider,
            width: 1,
          ),
        ),
      ),
      child: Column(
        children: [
          ElevatedButton(
            style: AppButtonStyles.primaryButton,
            onPressed: () {
              chuyenTaiKhoan();
            },
            child: const Text('Chuyển tài khoản'),
          ),
          const SizedBox(height: 12),
          TextButton(
            onPressed: () {
              dangNhapTaiKhoanKhac();
            },
            child: const Text(
              'Đăng nhập tài khoản khác',
              style: AppTextStyles.linkText,
            ),
          ),
        ],
      ),
    );
  }

  void chuyenTaiKhoan() {
    final String tenTaiKhoan = danhSachTaiKhoan[taiKhoanDangChon]['ten'] ?? '';

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Đã chuyển sang tài khoản $tenTaiKhoan'),
        behavior: SnackBarBehavior.floating,
      ),
    );

    Navigator.pop(context);
  }

  void dangNhapTaiKhoanKhac() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const Login(),
      ),
          (route) => false,
    );
  }
}