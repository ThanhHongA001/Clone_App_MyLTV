import 'package:flutter/material.dart';

import '../../../values/lib_color.dart';
import '../../../values/lib_string.dart';
import 'xml_service_common.dart';

class XmlServiceClub extends StatelessWidget {
  const XmlServiceClub({super.key});

  @override
  Widget build(BuildContext context) {
    return ServicePageFrame(
      title: AppStrings.club,
      subtitle: 'Đăng ký câu lạc bộ, lịch sinh hoạt và trạng thái tham gia.',
      icon: Icons.groups_rounded,
      color: AppColors.serviceClub,
      children: [
        _clubCard(
          'CLB Bóng rổ',
          'Thứ 3, Thứ 5 - 16:30',
          'Sân thể chất',
          'Đã tham gia',
          const Color(0xff4ba69a),
          Icons.sports_basketball_rounded,
        ),
        _clubCard(
          'CLB Tiếng Anh',
          'Thứ 4 - 15:45',
          'Phòng ngoại ngữ',
          'Còn chỗ',
          AppColors.serviceClub,
          Icons.language_rounded,
        ),
        _clubCard(
          'CLB Mỹ thuật',
          'Thứ 7 - 08:00',
          'Phòng sáng tạo',
          'Đăng ký mới',
          AppColors.serviceMeal,
          Icons.palette_rounded,
        ),
      ],
    );
  }

  Widget _clubCard(
    String title,
    String time,
    String place,
    String status,
    Color color,
    IconData icon,
  ) {
    return ServiceInfoCard(
      title: title,
      subtitle: time,
      icon: icon,
      color: color,
      tag: status,
      children: [
        ServiceLine(
          icon: Icons.schedule_rounded,
          label: 'Lịch học',
          value: time,
        ),
        ServiceLine(
          icon: Icons.location_on_rounded,
          label: 'Địa điểm',
          value: place,
        ),
        const ServiceLine(
          icon: Icons.person_rounded,
          label: 'Phụ trách',
          value: 'Giáo viên trung tâm năng khiếu',
        ),
        const SizedBox(height: 14),
        ServiceActionButton(
          text: 'Xem chi tiết CLB',
          color: color,
          icon: Icons.arrow_forward_rounded,
        ),
      ],
    );
  }
}
