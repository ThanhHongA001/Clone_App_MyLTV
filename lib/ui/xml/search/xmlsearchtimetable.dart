import 'package:flutter/material.dart';

class XmlSearchTimetable extends StatelessWidget {
  const XmlSearchTimetable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarThoiKhoaBieu(),
      body: Column(
        children: [
          giaoDienTieuDe(),
          giaoDienDanhSachTietHoc(),
        ],
      ),
    );
  }

  PreferredSizeWidget appBarThoiKhoaBieu() {
    return AppBar(
      title: const Text('Thời khóa biểu'),
      centerTitle: true,
    );
  }

  Widget giaoDienTieuDe() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: const Text(
        'Thời khóa biểu hôm nay',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget giaoDienDanhSachTietHoc() {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          giaoDienTietHoc(
            tiet: 'Tiết 1',
            monHoc: 'Toán học',
            thoiGian: '07:00 - 07:45',
            phongHoc: 'Chưa cập nhật',
          ),
          giaoDienTietHoc(
            tiet: 'Tiết 2',
            monHoc: 'Ngữ văn',
            thoiGian: '07:50 - 08:35',
            phongHoc: 'Chưa cập nhật',
          ),
          giaoDienTietHoc(
            tiet: 'Tiết 3',
            monHoc: 'Tiếng Anh',
            thoiGian: '08:45 - 09:30',
            phongHoc: 'Chưa cập nhật',
          ),
        ],
      ),
    );
  }

  Widget giaoDienTietHoc({
    required String tiet,
    required String monHoc,
    required String thoiGian,
    required String phongHoc,
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 58,
            height: 58,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xff48a6e8),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              tiet,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xffffffff),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
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
                const SizedBox(height: 6),
                Text('Thời gian: $thoiGian'),
                const SizedBox(height: 4),
                Text('Phòng học: $phongHoc'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}