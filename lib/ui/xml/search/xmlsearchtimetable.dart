import 'package:flutter/material.dart';

import 'xml_search_common.dart';

class XmlSearchTimetable extends StatelessWidget {
  const XmlSearchTimetable({super.key});

  static const Color _color = Color(0xff48a6e8);

  @override
  Widget build(BuildContext context) {
    return SearchPageFrame(
      title: 'Thời khóa biểu',
      subtitle:
          'Lịch học trong ngày, thời gian từng tiết và phòng học tương ứng.',
      icon: Icons.calendar_today_rounded,
      color: _color,
      children: [
        _daySelector(),
        _lessonCard(
          period: 'Tiết 1',
          subject: 'Toán học',
          time: '07:00 - 07:45',
          room: 'Phòng 10A1',
          teacher: 'Nguyễn Văn Minh',
          status: 'Sắp học',
        ),
        _lessonCard(
          period: 'Tiết 2',
          subject: 'Ngữ văn',
          time: '07:50 - 08:35',
          room: 'Phòng 10A1',
          teacher: 'Trần Thị Hạnh',
          status: 'Hôm nay',
        ),
        _lessonCard(
          period: 'Tiết 3',
          subject: 'Tiếng Anh',
          time: '08:45 - 09:30',
          room: 'Phòng ngoại ngữ',
          teacher: 'Lê Hoàng Anh',
          status: 'Hôm nay',
        ),
        _lessonCard(
          period: 'Tiết 4',
          subject: 'Tin học',
          time: '09:40 - 10:25',
          room: 'Phòng máy 02',
          teacher: 'Phạm Quốc Bảo',
          status: 'Hôm nay',
        ),
      ],
    );
  }

  Widget _daySelector() {
    final days = ['T2', 'T3', 'T4', 'T5', 'T6', 'T7'];
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xffece6ef)),
      ),
      child: Row(
        children: days.map((day) {
          final selected = day == 'T4';
          return Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 3),
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: selected ? _color : const Color(0xfff5f0f7),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                day,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: selected ? Colors.white : const Color(0xff777777),
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _lessonCard({
    required String period,
    required String subject,
    required String time,
    required String room,
    required String teacher,
    required String status,
  }) {
    return SearchInfoCard(
      title: subject,
      subtitle: period,
      icon: Icons.menu_book_rounded,
      color: _color,
      tag: status,
      children: [
        InfoLine(icon: Icons.schedule_rounded, label: 'Thời gian', value: time),
        InfoLine(
          icon: Icons.meeting_room_rounded,
          label: 'Phòng học',
          value: room,
        ),
        InfoLine(
          icon: Icons.person_rounded,
          label: 'Giáo viên',
          value: teacher,
        ),
      ],
    );
  }
}
