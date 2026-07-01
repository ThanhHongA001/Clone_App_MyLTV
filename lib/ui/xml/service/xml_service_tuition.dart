import 'package:flutter/material.dart';

import '../../../values/lib_color.dart';
import '../../../values/lib_string.dart';
import 'xml_service_common.dart';

class XmlServiceTuition extends StatelessWidget {
  const XmlServiceTuition({super.key});

  @override
  Widget build(BuildContext context) {
    return ServicePageFrame(
      title: AppStrings.tuitionFee,
      subtitle: 'Theo dõi học phí, các khoản dịch vụ và trạng thái thanh toán.',
      icon: Icons.credit_card_rounded,
      color: AppColors.serviceTuition,
      children: [
        _paymentSummary(),
        _feeCard(
          'Học phí tháng 06',
          '2.500.000đ',
          '30/06/2026',
          'Chưa thanh toán',
          AppColors.serviceCoin,
        ),
        _feeCard(
          'Phí bán trú',
          '850.000đ',
          '30/06/2026',
          'Đã thanh toán',
          const Color(0xff4ba69a),
        ),
        _feeCard(
          'Phí xe tuyến',
          '600.000đ',
          '30/06/2026',
          'Chờ xác nhận',
          AppColors.serviceMeal,
        ),
      ],
    );
  }

  Widget _paymentSummary() {
    return ServiceInfoCard(
      title: 'Tổng cần thanh toán',
      subtitle: 'Cập nhật đến hôm nay',
      icon: Icons.receipt_long_rounded,
      color: AppColors.serviceTuition,
      tag: '2 khoản',
      children: const [
        ServiceLine(
          icon: Icons.payments_rounded,
          label: 'Số tiền',
          value: '3.100.000đ',
        ),
        ServiceLine(
          icon: Icons.event_rounded,
          label: 'Hạn gần nhất',
          value: '30/06/2026',
        ),
        SizedBox(height: 14),
        ServiceActionButton(
          text: 'Thanh toán ngay',
          color: AppColors.serviceTuition,
          icon: Icons.payment_rounded,
        ),
      ],
    );
  }

  Widget _feeCard(
    String title,
    String amount,
    String deadline,
    String status,
    Color color,
  ) {
    return ServiceInfoCard(
      title: title,
      subtitle: amount,
      icon: Icons.monetization_on_rounded,
      color: color,
      tag: status,
      children: [
        ServiceLine(
          icon: Icons.payments_rounded,
          label: 'Số tiền',
          value: amount,
        ),
        ServiceLine(
          icon: Icons.event_available_rounded,
          label: 'Hạn đóng',
          value: deadline,
        ),
      ],
    );
  }
}
