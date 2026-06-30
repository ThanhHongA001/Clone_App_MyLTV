import 'package:flutter/material.dart';

import '../../item/Home/item_home_news_page.dart';

class XmlHomeNewsPage extends StatelessWidget {
  const XmlHomeNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F4FA),
      appBar: appBarTrangTin(),
      body: Column(
        children: [
          giaoDienLogoVaTimKiem(),
          giaoDienDanhSachTin(),
        ],
      ),
    );
  }

  PreferredSizeWidget appBarTrangTin() {
    return AppBar(
      title: const Text('Trang tin'),
      centerTitle: true,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
    );
  }

  Widget giaoDienLogoVaTimKiem() {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(18, 14, 18, 18),
      child: Row(
        children: [
          giaoDienLogo(),
          const Spacer(),
          const Icon(
            Icons.search,
            size: 34,
            color: Color(0xff888888),
          ),
        ],
      ),
    );
  }

  Widget giaoDienLogo() {
    return Row(
      children: [
        Container(
          width: 48,
          height: 42,
          alignment: Alignment.center,
          child: const Icon(
            Icons.change_history,
            size: 42,
            color: Color(0xff0C4A9A),
          ),
        ),
        const SizedBox(width: 12),
        const Text(
          'LUONG THE VINH',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w900,
            color: Color(0xff0C4A9A),
          ),
        ),
      ],
    );
  }

  Widget giaoDienDanhSachTin() {
    final List<Map<String, dynamic>> danhSachTin = [
      {
        'source': 'SLLĐT',
        'author': 'Lương Thế Vinh',
        'dateTime': '02/06/2026 16:01',
        'category': 'Thông báo',
        'categoryColor': const Color(0xff3C9D8B),
        'title': 'BAN GIÁM HIỆU TRƯỜNG LƯƠNG THẾ VINH THÔNG BÁO:',
        'content':
        'Hôm qua, ngày 01/06/2026, nhà trường đã nhận được khoản hỗ trợ học phí cho học sinh theo Nghị quyết 47/2025/NQ-HĐND của Hội đồng nhân dân TP Hà Nội.\n\n'
            'Mức học phí được hỗ trợ như sau:\n\n'
            '- Đối với học sinh cấp THCS:\n\n'
            '155.000đ/học sinh/tháng x 9 tháng = 1.395.000đ\n\n'
            '- Đối với học sinh cấp THPT:\n\n'
            '217.000đ/học sinh/tháng x 9 tháng = 1.953.000đ\n\n'
            'Nhà trường sẽ hoàn trả khoản hỗ trợ này vào số tài khoản CMHS đóng học phí tháng gần nhất và dự kiến hoàn trong vòng 4-5 ngày tiếp theo.\n\n'
            'Trân trọng cảm ơn!',
      },
      {
        'source': 'SLLĐT',
        'author': 'Vũ Danh Tùng',
        'dateTime': '02/06/2026 11:24',
        'category': 'Học phí',
        'categoryColor': const Color(0xff8BC34A),
        'title': 'Kính gửi quý phụ huynh,',
        'content':
        'Trường THCS&THPT Lương Thế Vinh trân trọng cảm ơn quý phụ huynh đã đồng hành cùng nhà trường trong thời gian qua.',
      },
      {
        'source': 'SLLĐT',
        'author': 'Lương Thế Vinh',
        'dateTime': '01/06/2026 08:30',
        'category': 'Tin tức',
        'categoryColor': const Color(0xff2196F3),
        'title': 'Thông báo lịch hoạt động tuần mới',
        'content':
        'Nhà trường thông báo lịch hoạt động tuần mới tới học sinh và quý phụ huynh. Vui lòng theo dõi để cập nhật thông tin đầy đủ.',
      },
    ];

    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 10),
        itemCount: danhSachTin.length,
        itemBuilder: (context, index) {
          final item = danhSachTin[index];

          return ItemHomeNewsPage(
            source: item['source'],
            author: item['author'],
            dateTime: item['dateTime'],
            category: item['category'],
            categoryColor: item['categoryColor'],
            title: item['title'],
            content: item['content'],
          );
        },
      ),
    );
  }
}