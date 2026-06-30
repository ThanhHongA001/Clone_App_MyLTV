import 'package:flutter/material.dart';

class XmlSearchOnlineStudy extends StatelessWidget {
  const XmlSearchOnlineStudy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarHocTapOnline(),
      body: Column(
        children: [
          giaoDienTieuDe(),
          giaoDienNoiDung(),
        ],
      ),
    );
  }

  PreferredSizeWidget appBarHocTapOnline() {
    return AppBar(
      title: const Text('Học tập online'),
      centerTitle: true,
    );
  }

  Widget giaoDienTieuDe() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: const Text(
        'Danh sách lớp học online',
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
          giaoDienLopHoc(
            tenMon: 'Toán học',
            giaoVien: 'Chưa cập nhật',
            thoiGian: 'Chưa cập nhật',
          ),
          giaoDienLopHoc(
            tenMon: 'Ngữ văn',
            giaoVien: 'Chưa cập nhật',
            thoiGian: 'Chưa cập nhật',
          ),
          giaoDienLopHoc(
            tenMon: 'Tiếng Anh',
            giaoVien: 'Chưa cập nhật',
            thoiGian: 'Chưa cập nhật',
          ),
        ],
      ),
    );
  }

  Widget giaoDienLopHoc({
    required String tenMon,
    required String giaoVien,
    required String thoiGian,
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
            tenMon,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text('Giáo viên: $giaoVien'),
          const SizedBox(height: 4),
          Text('Thời gian: $thoiGian'),
        ],
      ),
    );
  }
}