import 'package:flutter/material.dart';

import '../../../values/lib_color.dart';
import '../../../values/lib_string.dart';
import 'xml_service_common.dart';

class XmlServiceEvent extends StatelessWidget {
  const XmlServiceEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return ServicePageFrame(
      title: AppStrings.event,
      subtitle:
          'Sự kiện sắp diễn ra, lịch đăng ký và hoạt động của nhà trường.',
      icon: Icons.event_available_rounded,
      color: AppColors.serviceEvent,
      children: [
        _eventCard(
          'Ngày hội STEM',
          '28/06/2026',
          'Sân trường',
          'Đang mở đăng ký',
          'Trải nghiệm mô hình khoa học, robot và các gian hàng sáng tạo.',
          AppColors.serviceEvent,
        ),
        _eventCard(
          'Dã ngoại cuối năm',
          '05/07/2026',
          'Khu sinh thái Green Park',
          'Cần xác nhận',
          'Phụ huynh xác nhận tham gia và hoàn tất phí trước ngày 30/06.',
          AppColors.serviceMeal,
        ),
        _eventCard(
          'Lễ tổng kết học kỳ',
          '12/07/2026',
          'Hội trường A',
          'Sắp diễn ra',
          'Tổng kết năm học, tuyên dương học sinh và trao thưởng.',
          const Color(0xff4ba69a),
        ),
      ],
    );
  }

  Widget _eventCard(
    String title,
    String date,
    String place,
    String status,
    String content,
    Color color,
  ) {
    return ServiceInfoCard(
      title: title,
      subtitle: date,
      icon: Icons.celebration_rounded,
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
        ServiceLine(
          icon: Icons.location_on_rounded,
          label: 'Địa điểm',
          value: place,
        ),
        const SizedBox(height: 14),
        ServiceActionButton(
          text: 'Xem / đăng ký',
          color: color,
          icon: Icons.arrow_forward_rounded,
        ),
      ],
    );
  }
}
