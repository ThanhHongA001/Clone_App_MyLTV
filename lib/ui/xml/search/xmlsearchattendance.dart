import 'package:flutter/material.dart';

import 'xml_search_common.dart';

class XmlSearchAttendance extends StatelessWidget {
  const XmlSearchAttendance({super.key});

  static const Color _color = Color(0xff6f8793);

  @override
  Widget build(BuildContext context) {
    return SearchPageFrame(
      title: 'Chuyên cần',
      subtitle:
          'Theo dõi ngày đi học, nghỉ phép, đi muộn và tình trạng điểm danh.',
      icon: Icons.fact_check_rounded,
      color: _color,
      children: [
        _summary(),
        _attendanceCard(
          date: 'Thứ 2, 24/06/2026',
          status: 'Có mặt',
          morning: '07:02 - Đúng giờ',
          afternoon: '13:28 - Đúng giờ',
          note: 'Hoàn thành đầy đủ các tiết học trong ngày.',
          color: const Color(0xff4ba69a),
          icon: Icons.check_circle_rounded,
        ),
        _attendanceCard(
          date: 'Thứ 3, 25/06/2026',
          status: 'Đi muộn',
          morning: '07:18 - Muộn 8 phút',
          afternoon: '13:30 - Đúng giờ',
          note: 'Phụ huynh đã xác nhận lý do tắc đường buổi sáng.',
          color: const Color(0xffffa536),
          icon: Icons.access_time_filled_rounded,
        ),
        _attendanceCard(
          date: 'Thứ 4, 26/06/2026',
          status: 'Có phép',
          morning: 'Nghỉ có phép',
          afternoon: 'Nghỉ có phép',
          note: 'Đơn xin nghỉ đã được giáo viên chủ nhiệm duyệt.',
          color: const Color(0xff48a6e8),
          icon: Icons.assignment_turned_in_rounded,
        ),
      ],
    );
  }

  Widget _summary() {
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
          _summaryItem('Có mặt', '21', const Color(0xff4ba69a)),
          _summaryItem('Đi muộn', '01', const Color(0xffffa536)),
          _summaryItem('Nghỉ phép', '01', const Color(0xff48a6e8)),
        ],
      ),
    );
  }

  Widget _summaryItem(String label, String value, Color color) {
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

  Widget _attendanceCard({
    required String date,
    required String status,
    required String morning,
    required String afternoon,
    required String note,
    required Color color,
    required IconData icon,
  }) {
    return SearchInfoCard(
      title: date,
      subtitle: 'Điểm danh trong ngày',
      icon: icon,
      color: color,
      tag: status,
      children: [
        InfoLine(
          icon: Icons.wb_sunny_rounded,
          label: 'Buổi sáng',
          value: morning,
        ),
        InfoLine(
          icon: Icons.nights_stay_rounded,
          label: 'Buổi chiều',
          value: afternoon,
        ),
        InfoLine(icon: Icons.notes_rounded, label: 'Ghi chú', value: note),
      ],
    );
  }
}
