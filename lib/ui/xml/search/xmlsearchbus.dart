import 'package:flutter/material.dart';

class XmlSearchBus extends StatelessWidget {
  const XmlSearchBus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarXeTuyen(),
      body: Column(
        children: [
          giaoDienTieuDe(),
          giaoDienNoiDung(),
        ],
      ),
    );
  }

  PreferredSizeWidget appBarXeTuyen() {
    return AppBar(
      title: const Text('Xe tuyến'),
      centerTitle: true,
    );
  }

  Widget giaoDienTieuDe() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: const Text(
        'Tra cứu xe tuyến',
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
          giaoDienDongThongTin(
            title: 'Tuyến xe',
            content: 'Chưa có dữ liệu tuyến xe',
          ),
          giaoDienDongThongTin(
            title: 'Thời gian',
            content: 'Chưa có dữ liệu thời gian',
          ),
          giaoDienDongThongTin(
            title: 'Điểm đón',
            content: 'Chưa có dữ liệu điểm đón',
          ),
        ],
      ),
    );
  }

  Widget giaoDienDongThongTin({
    required String title,
    required String content,
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
            title,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            content,
            style: const TextStyle(
              fontSize: 15,
              color: Color(0xff555555),
            ),
          ),
        ],
      ),
    );
  }
}