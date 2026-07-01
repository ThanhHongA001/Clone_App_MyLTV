import 'package:flutter/material.dart';

import 'xml_search_common.dart';

class XmlSearchOnlineStudy extends StatelessWidget {
  const XmlSearchOnlineStudy({super.key});

  static const Color _color = Color(0xff6338b7);

  @override
  Widget build(BuildContext context) {
    return SearchPageFrame(
      title: 'Học tập online',
      subtitle:
          'Danh sách lớp trực tuyến, tài liệu học và trạng thái tham gia.',
      icon: Icons.laptop_mac_rounded,
      color: _color,
      children: [
        _classCard(
          subject: 'Toán học',
          teacher: 'Thầy Nguyễn Văn Minh',
          time: '19:30 - 20:30, Thứ 4',
          platform: 'Google Meet',
          status: 'Sắp diễn ra',
          progress: '4/6 bài đã học',
        ),
        _classCard(
          subject: 'Tiếng Anh',
          teacher: 'Cô Lê Hoàng Anh',
          time: '20:00 - 21:00, Thứ 5',
          platform: 'Zoom Meeting',
          status: 'Đã đăng ký',
          progress: '6/8 bài đã học',
        ),
        _classCard(
          subject: 'Tin học',
          teacher: 'Thầy Phạm Quốc Bảo',
          time: '18:30 - 19:15, Thứ 7',
          platform: 'Microsoft Teams',
          status: 'Có tài liệu mới',
          progress: '2/5 bài đã học',
        ),
      ],
    );
  }

  Widget _classCard({
    required String subject,
    required String teacher,
    required String time,
    required String platform,
    required String status,
    required String progress,
  }) {
    return SearchInfoCard(
      title: subject,
      subtitle: progress,
      icon: Icons.play_circle_fill_rounded,
      color: _color,
      tag: status,
      children: [
        InfoLine(
          icon: Icons.person_rounded,
          label: 'Giáo viên',
          value: teacher,
        ),
        InfoLine(icon: Icons.schedule_rounded, label: 'Thời gian', value: time),
        InfoLine(
          icon: Icons.video_call_rounded,
          label: 'Nền tảng',
          value: platform,
        ),
        const SizedBox(height: 14),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 44,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: _color,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  'Vào lớp học',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: _color.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(Icons.folder_rounded, color: _color),
            ),
          ],
        ),
      ],
    );
  }
}
