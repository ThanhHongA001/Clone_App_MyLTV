import 'package:flutter/material.dart';

import 'xml_search_common.dart';

class XmlSearchHomework extends StatelessWidget {
  const XmlSearchHomework({super.key});

  static const Color _color = Color(0xff498daf);

  @override
  Widget build(BuildContext context) {
    return SearchPageFrame(
      title: 'Bài tập về nhà',
      subtitle: 'Danh sách bài tập được giao, hạn nộp và tiến độ hoàn thành.',
      icon: Icons.menu_book_rounded,
      color: _color,
      children: [
        _progressCard(),
        _homeworkCard(
          subject: 'Toán học',
          title: 'Bài tập chương Hàm số',
          deadline: '20:00 - 27/06/2026',
          teacher: 'Thầy Nguyễn Văn Minh',
          content:
              'Hoàn thành bài 1 đến bài 8 trang 42 và nộp ảnh vở bài tập lên hệ thống.',
          status: 'Chưa nộp',
          color: const Color(0xffffa536),
          icon: Icons.calculate_rounded,
        ),
        _homeworkCard(
          subject: 'Ngữ văn',
          title: 'Soạn bài Chiếc lược ngà',
          deadline: '07:00 - 28/06/2026',
          teacher: 'Cô Trần Thị Hạnh',
          content:
              'Đọc văn bản, trả lời câu hỏi đọc hiểu và chuẩn bị phần thảo luận nhóm.',
          status: 'Đang làm',
          color: _color,
          icon: Icons.edit_note_rounded,
        ),
        _homeworkCard(
          subject: 'Tiếng Anh',
          title: 'Unit 7 - Vocabulary Practice',
          deadline: '21:00 - 26/06/2026',
          teacher: 'Cô Lê Hoàng Anh',
          content:
              'Làm bài luyện từ vựng trên workbook và ghi âm đoạn hội thoại mẫu.',
          status: 'Đã nộp',
          color: const Color(0xff4ba69a),
          icon: Icons.language_rounded,
        ),
      ],
    );
  }

  Widget _progressCard() {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xffece6ef)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Expanded(
                child: Text(
                  'Tiến độ tuần này',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
                ),
              ),
              Text(
                '5/8 bài',
                style: TextStyle(
                  color: _color,
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(99),
            child: LinearProgressIndicator(
              value: 0.62,
              minHeight: 10,
              backgroundColor: const Color(0xffece6ef),
              color: _color,
            ),
          ),
        ],
      ),
    );
  }

  Widget _homeworkCard({
    required String subject,
    required String title,
    required String deadline,
    required String teacher,
    required String content,
    required String status,
    required Color color,
    required IconData icon,
  }) {
    return SearchInfoCard(
      title: title,
      subtitle: subject,
      icon: icon,
      color: color,
      tag: status,
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
        InfoLine(
          icon: Icons.person_rounded,
          label: 'Giáo viên',
          value: teacher,
        ),
        InfoLine(icon: Icons.event_rounded, label: 'Hạn nộp', value: deadline),
      ],
    );
  }
}
