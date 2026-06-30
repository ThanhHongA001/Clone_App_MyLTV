import 'package:flutter/material.dart';

class XmlHomeFeedbackPage extends StatelessWidget {
  const XmlHomeFeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarPhanHoi(),
      body: Column(
        children: [
          giaoDienTieuDe(),
          giaoDienNoiDungPhanHoi(),
          giaoDienNutGui(),
        ],
      ),
    );
  }

  PreferredSizeWidget appBarPhanHoi() {
    return AppBar(
      title: const Text('Phản hồi'),
      centerTitle: true,
    );
  }

  Widget giaoDienTieuDe() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: const Text(
        'Gửi phản hồi',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget giaoDienNoiDungPhanHoi() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: TextField(
          maxLines: null,
          expands: true,
          textAlignVertical: TextAlignVertical.top,
          decoration: InputDecoration(
            hintText: 'Nhập nội dung phản hồi',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }

  Widget giaoDienNutGui() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        width: double.infinity,
        height: 48,
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Gửi phản hồi'),
        ),
      ),
    );
  }
}