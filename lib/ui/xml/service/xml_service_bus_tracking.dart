import 'package:flutter/material.dart';

import '../../../values/lib_color.dart';
import '../../../values/lib_string.dart';
import 'xml_service_common.dart';

class XmlServiceBusTracking extends StatelessWidget {
  const XmlServiceBusTracking({super.key});

  @override
  Widget build(BuildContext context) {
    return ServicePageFrame(
      title: AppStrings.busTracking,
      subtitle:
          'Theo dõi xe tuyến, vị trí hiện tại, tài xế và thời gian đón trả.',
      icon: Icons.directions_bus_filled_rounded,
      color: AppColors.serviceBus,
      children: [
        _trackingCard(),
        _stopCard(
          'Điểm đón nhà văn hóa phường',
          '06:25',
          'Đã qua',
          const Color(0xff4ba69a),
        ),
        _stopCard(
          'Cổng khu đô thị A',
          '06:35',
          'Đang đến',
          AppColors.serviceMeal,
        ),
        _stopCard('Cổng trường', '06:55', 'Dự kiến', AppColors.serviceBus),
      ],
    );
  }

  Widget _trackingCard() {
    return ServiceInfoCard(
      title: 'Xe tuyến 03',
      subtitle: '29B-123.45 - Chú Nguyễn Văn Hùng',
      icon: Icons.navigation_rounded,
      color: AppColors.serviceBus,
      tag: 'Đang chạy',
      children: const [
        ServiceLine(
          icon: Icons.speed_rounded,
          label: 'Tốc độ',
          value: '32 km/h',
        ),
        ServiceLine(
          icon: Icons.location_on_rounded,
          label: 'Vị trí',
          value: 'Cách điểm đón tiếp theo 1.2 km',
        ),
        ServiceLine(
          icon: Icons.phone_rounded,
          label: 'Liên hệ',
          value: '0901 234 567',
        ),
        SizedBox(height: 14),
        ServiceActionButton(
          text: 'Mở bản đồ theo dõi',
          color: AppColors.serviceBus,
          icon: Icons.map_rounded,
        ),
      ],
    );
  }

  Widget _stopCard(String name, String time, String status, Color color) {
    return ServiceInfoCard(
      title: name,
      subtitle: 'Thời gian: $time',
      icon: Icons.pin_drop_rounded,
      color: color,
      tag: status,
      children: [
        ServiceLine(
          icon: Icons.schedule_rounded,
          label: 'Giờ dự kiến',
          value: time,
        ),
        ServiceLine(
          icon: Icons.info_rounded,
          label: 'Trạng thái',
          value: status,
        ),
      ],
    );
  }
}
