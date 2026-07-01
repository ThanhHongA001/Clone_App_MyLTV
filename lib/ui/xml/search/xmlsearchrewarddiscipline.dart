import 'package:flutter/material.dart';

import 'xml_search_common.dart';

class XmlSearchRewardDiscipline extends StatelessWidget {
  const XmlSearchRewardDiscipline({super.key});

  static const Color _color = Color(0xfff1734c);

  @override
  Widget build(BuildContext context) {
    return SearchPageFrame(
      title: 'Khen thưởng - Kỷ luật',
      subtitle:
          'Tổng hợp ghi nhận, nhắc nhở và lịch sử rèn luyện của học sinh.',
      icon: Icons.workspace_premium_rounded,
      color: _color,
      children: [
        _overview(),
        _recordCard(
          title: 'Khen thưởng tuần',
          date: '22/06/2026',
          content: 'Tích cực phát biểu xây dựng bài trong giờ Toán học.',
          teacher: 'GVCN: Cô Mai Anh',
          icon: Icons.emoji_events_rounded,
          tag: 'Khen thưởng',
          color: const Color(0xfff6a332),
        ),
        _recordCard(
          title: 'Điểm rèn luyện tốt',
          date: '18/06/2026',
          content:
              'Hoàn thành đầy đủ nội quy lớp học và tham gia trực nhật đúng lịch.',
          teacher: 'Ban nề nếp',
          icon: Icons.verified_rounded,
          tag: 'Tích cực',
          color: const Color(0xff4ba69a),
        ),
        _recordCard(
          title: 'Nhắc nhở nhẹ',
          date: '12/06/2026',
          content: 'Cần chuẩn bị sách bài tập trước khi đến lớp.',
          teacher: 'GV bộ môn Văn',
          icon: Icons.info_rounded,
          tag: 'Nhắc nhở',
          color: _color,
        ),
      ],
    );
  }

  Widget _overview() {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xffece6ef)),
      ),
      child: Row(
        children: [
          _overviewItem('Khen thưởng', '02', const Color(0xfff6a332)),
          _overviewItem('Nhắc nhở', '01', _color),
          _overviewItem('Kỷ luật', '00', const Color(0xff4ba69a)),
        ],
      ),
    );
  }

  Widget _overviewItem(String label, String value, Color color) {
    return Expanded(
      child: Column(
        children: [
          Text(
            value,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: color,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xff777777),
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  Widget _recordCard({
    required String title,
    required String date,
    required String content,
    required String teacher,
    required IconData icon,
    required String tag,
    required Color color,
  }) {
    return SearchInfoCard(
      title: title,
      subtitle: date,
      icon: icon,
      color: color,
      tag: tag,
      children: [
        Text(
          content,
          style: const TextStyle(
            fontSize: 15,
            height: 1.45,
            color: Color(0xff2f2d33),
            fontWeight: FontWeight.w600,
          ),
        ),
        InfoLine(
          icon: Icons.person_rounded,
          label: 'Người ghi nhận',
          value: teacher,
        ),
      ],
    );
  }
}
