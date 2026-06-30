import 'package:flutter/material.dart';

class XmlSearchScore extends StatelessWidget {
  const XmlSearchScore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarSoDiem(),
      body: Column(
        children: [
          giaoDienTieuDe(),
          giaoDienBangDiem(),
        ],
      ),
    );
  }

  PreferredSizeWidget appBarSoDiem() {
    return AppBar(
      title: const Text('Sổ điểm'),
      centerTitle: true,
    );
  }

  Widget giaoDienTieuDe() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: const Text(
        'Bảng điểm học tập',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget giaoDienBangDiem() {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          giaoDienDiemMonHoc(
            monHoc: 'Toán học',
            diemMieng: 'Chưa có',
            diemGiuaKy: 'Chưa có',
            diemCuoiKy: 'Chưa có',
          ),
          giaoDienDiemMonHoc(
            monHoc: 'Ngữ văn',
            diemMieng: 'Chưa có',
            diemGiuaKy: 'Chưa có',
            diemCuoiKy: 'Chưa có',
          ),
          giaoDienDiemMonHoc(
            monHoc: 'Tiếng Anh',
            diemMieng: 'Chưa có',
            diemGiuaKy: 'Chưa có',
            diemCuoiKy: 'Chưa có',
          ),
        ],
      ),
    );
  }

  Widget giaoDienDiemMonHoc({
    required String monHoc,
    required String diemMieng,
    required String diemGiuaKy,
    required String diemCuoiKy,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xffe0e0e0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            monHoc,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text('Điểm miệng: $diemMieng'),
          const SizedBox(height: 4),
          Text('Điểm giữa kỳ: $diemGiuaKy'),
          const SizedBox(height: 4),
          Text('Điểm cuối kỳ: $diemCuoiKy'),
        ],
      ),
    );
  }
}