import 'package:flutter/material.dart';

import 'xml_search_common.dart';

class XmlSearchBus extends StatelessWidget {
  const XmlSearchBus({super.key});

  static const Color _color = Color(0xff58aa70);

  @override
  Widget build(BuildContext context) {
    return SearchPageFrame(
      title: 'Xe tuyến',
      subtitle: 'Tra cứu tuyến xe, tài xế, điểm đón và lịch trình di chuyển.',
      icon: Icons.directions_bus_rounded,
      color: _color,
      children: [
        _routeCard(
          route: 'Tuyến 03 - Khu đô thị phía Đông',
          plate: '29B-123.45',
          driver: 'Chú Nguyễn Văn Hùng',
          phone: '0901 234 567',
          pickup: 'Cổng A - 06:35',
          dropOff: 'Cổng trường - 06:55',
          status: 'Đang hoạt động',
        ),
        _routeCard(
          route: 'Tuyến 07 - Trung tâm thành phố',
          plate: '29B-678.90',
          driver: 'Cô Trần Thu Hà',
          phone: '0908 888 777',
          pickup: 'Nhà văn hóa phường - 06:25',
          dropOff: 'Cổng trường - 06:50',
          status: 'Còn chỗ',
        ),
        _noteCard(),
      ],
    );
  }

  Widget _routeCard({
    required String route,
    required String plate,
    required String driver,
    required String phone,
    required String pickup,
    required String dropOff,
    required String status,
  }) {
    return SearchInfoCard(
      title: route,
      subtitle: 'Biển số: $plate',
      icon: Icons.route_rounded,
      color: _color,
      tag: status,
      children: [
        InfoLine(icon: Icons.person_rounded, label: 'Tài xế', value: driver),
        InfoLine(icon: Icons.phone_rounded, label: 'Liên hệ', value: phone),
        InfoLine(
          icon: Icons.location_on_rounded,
          label: 'Điểm đón',
          value: pickup,
        ),
        InfoLine(icon: Icons.flag_rounded, label: 'Điểm đến', value: dropOff),
      ],
    );
  }

  Widget _noteCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(18),
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.info_rounded, color: _color),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              'Phụ huynh vui lòng cho học sinh có mặt tại điểm đón trước giờ xe chạy 5 phút.',
              style: TextStyle(
                color: Color(0xff2f2d33),
                fontSize: 14,
                height: 1.4,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
