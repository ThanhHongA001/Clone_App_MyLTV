import 'package:flutter/material.dart';

import '../../../values/lib_color.dart';
import '../../../values/lib_string.dart';
import 'xml_service_common.dart';

class XmlServiceSurvey extends StatelessWidget {
  const XmlServiceSurvey({super.key});

  @override
  Widget build(BuildContext context) {
    return ServicePageFrame(
      title: AppStrings.survey,
      subtitle: 'Phiếu khảo sát ý kiến phụ huynh, học sinh và mức độ hài lòng.',
      icon: Icons.fact_check_rounded,
      color: AppColors.serviceSurvey,
      children: [
        _surveyCard(
          'Khảo sát chất lượng bữa ăn',
          '5 câu hỏi',
          'Còn 2 ngày',
          'Chưa làm',
          AppColors.serviceSurvey,
        ),
        _surveyCard(
          'Góp ý hoạt động ngoại khóa',
          '8 câu hỏi',
          'Đến 30/06/2026',
          'Đang mở',
          AppColors.serviceEvent,
        ),
        _surveyCard(
          'Đánh giá dịch vụ xe tuyến',
          '6 câu hỏi',
          'Đã hoàn thành',
          'Đã gửi',
          const Color(0xff4ba69a),
        ),
      ],
    );
  }

  Widget _surveyCard(
    String title,
    String count,
    String deadline,
    String status,
    Color color,
  ) {
    return ServiceInfoCard(
      title: title,
      subtitle: count,
      icon: Icons.assignment_rounded,
      color: color,
      tag: status,
      children: [
        ServiceLine(
          icon: Icons.quiz_rounded,
          label: 'Số câu hỏi',
          value: count,
        ),
        ServiceLine(
          icon: Icons.event_rounded,
          label: 'Thời hạn',
          value: deadline,
        ),
        const SizedBox(height: 14),
        ServiceActionButton(
          text: status == 'Đã gửi' ? 'Xem câu trả lời' : 'Bắt đầu khảo sát',
          color: color,
          icon: Icons.edit_rounded,
        ),
      ],
    );
  }
}
