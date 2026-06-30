import 'package:flutter/material.dart';

class XmlSearchRewardDiscipline extends StatelessWidget {
  const XmlSearchRewardDiscipline({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarKhenThuongKyLuat(),
      body: Column(
        children: [
          giaoDienTieuDe(),
          giaoDienNoiDung(),
        ],
      ),
    );
  }

  PreferredSizeWidget appBarKhenThuongKyLuat() {
    return AppBar(
      title: const Text('Khen thưởng - Kỷ luật'),
      centerTitle: true,
    );
  }

  Widget giaoDienTieuDe() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: const Text(
        'Thông tin khen thưởng - kỷ luật',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget giaoDienNoiDung() {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          giaoDienMucThongTin(
            loai: 'Khen thưởng',
            noiDung: 'Chưa có dữ liệu khen thưởng',
            ngay: 'Chưa cập nhật',
          ),
          giaoDienMucThongTin(
            loai: 'Kỷ luật',
            noiDung: 'Chưa có dữ liệu kỷ luật',
            ngay: 'Chưa cập nhật',
          ),
        ],
      ),
    );
  }

  Widget giaoDienMucThongTin({
    required String loai,
    required String noiDung,
    required String ngay,
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
            loai,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(noiDung),
          const SizedBox(height: 4),
          Text('Ngày: $ngay'),
        ],
      ),
    );
  }
}