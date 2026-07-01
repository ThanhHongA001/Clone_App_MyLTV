import 'package:flutter/material.dart';

import 'xml_search_common.dart';

class XmlSearchNotification extends StatelessWidget {
  const XmlSearchNotification({super.key});

  static const Color _color = Color(0xff459d91);

  @override
  Widget build(BuildContext context) {
    return SearchPageFrame(
      title: 'Thông báo',
      subtitle:
          'Cập nhật thông tin mới từ nhà trường, giáo viên chủ nhiệm và hệ thống.',
      icon: Icons.notifications_rounded,
      color: _color,
      children: [
        _filterBar(),
        _notificationCard(
          title: 'Lịch họp phụ huynh cuối học kỳ',
          sender: 'Ban giám hiệu',
          time: 'Hôm nay - 08:30',
          content:
              'Nhà trường kính mời phụ huynh tham dự buổi họp cuối học kỳ để trao đổi kết quả học tập và rèn luyện của học sinh.',
          tag: 'Quan trọng',
          icon: Icons.campaign_rounded,
          color: const Color(0xffe8493d),
        ),
        _notificationCard(
          title: 'Thông báo lịch kiểm tra Toán',
          sender: 'GV bộ môn Toán',
          time: 'Hôm qua - 19:15',
          content:
              'Lớp sẽ kiểm tra 45 phút chương Hàm số vào tiết 2 thứ Sáu. Học sinh ôn lại bài tập trong vở và phiếu học tập.',
          tag: 'Học tập',
          icon: Icons.assignment_rounded,
          color: const Color(0xffffa536),
        ),
        _notificationCard(
          title: 'Nhắc đồng phục thứ Hai',
          sender: 'Giáo viên chủ nhiệm',
          time: '22/06/2026 - 16:05',
          content:
              'Học sinh mặc đồng phục đầy đủ, đeo thẻ học sinh và chuẩn bị sổ liên lạc khi đến trường.',
          tag: 'Nề nếp',
          icon: Icons.checkroom_rounded,
          color: _color,
        ),
        _notificationCard(
          title: 'Cập nhật thực đơn bán trú',
          sender: 'Phòng dịch vụ',
          time: '21/06/2026 - 10:20',
          content:
              'Thực đơn tuần mới đã được cập nhật trên hệ thống. Phụ huynh có thể kiểm tra chi tiết trong mục dịch vụ bán trú.',
          tag: 'Dịch vụ',
          icon: Icons.restaurant_menu_rounded,
          color: const Color(0xff48a6e8),
        ),
      ],
    );
  }

  Widget _filterBar() {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xffece6ef)),
      ),
      child: const Row(
        children: [
          _FilterChip(text: 'Tất cả', selected: true),
          _FilterChip(text: 'Quan trọng'),
          _FilterChip(text: 'Học tập'),
        ],
      ),
    );
  }

  Widget _notificationCard({
    required String title,
    required String sender,
    required String time,
    required String content,
    required String tag,
    required IconData icon,
    required Color color,
  }) {
    return SearchInfoCard(
      title: title,
      subtitle: sender,
      icon: icon,
      color: color,
      tag: tag,
      children: [
        Text(
          content,
          style: const TextStyle(
            color: Color(0xff2f2d33),
            fontSize: 15,
            height: 1.45,
            fontWeight: FontWeight.w600,
          ),
        ),
        InfoLine(icon: Icons.schedule_rounded, label: 'Thời gian', value: time),
      ],
    );
  }
}

class _FilterChip extends StatelessWidget {
  final String text;
  final bool selected;

  const _FilterChip({required this.text, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 3),
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: selected
              ? XmlSearchNotification._color
              : const Color(0xfff5f0f7),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: selected ? Colors.white : const Color(0xff777777),
            fontSize: 13,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
