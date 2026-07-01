import 'package:flutter/material.dart';

import '../../../values/lib_color.dart';
import '../../../values/lib_string.dart';
import 'xml_service_common.dart';

class XmlServiceMeal extends StatelessWidget {
  const XmlServiceMeal({super.key});

  @override
  Widget build(BuildContext context) {
    return ServicePageFrame(
      title: AppStrings.meal,
      subtitle:
          'Đăng ký suất ăn, xem thực đơn tuần và tình trạng sử dụng bữa ăn.',
      icon: Icons.restaurant_menu_rounded,
      color: AppColors.serviceMeal,
      children: [
        _balanceCard(),
        _menuCard(
          'Thứ 2',
          'Cơm gà sốt nấm',
          'Canh rau ngót thịt bằm',
          'Chuối',
          'Đã đăng ký',
        ),
        _menuCard(
          'Thứ 3',
          'Thịt kho trứng',
          'Canh bí đỏ',
          'Sữa chua',
          'Đã đăng ký',
        ),
        _menuCard(
          'Thứ 4',
          'Cá sốt cà chua',
          'Canh cải xanh',
          'Dưa hấu',
          'Có thể đổi',
        ),
      ],
    );
  }

  Widget _balanceCard() {
    return ServiceInfoCard(
      title: 'Gói bán trú tháng 06',
      subtitle: 'Còn 12 bữa ăn trong tháng',
      icon: Icons.wallet_rounded,
      color: AppColors.serviceMeal,
      tag: 'Đang dùng',
      children: const [
        ServiceLine(
          icon: Icons.payments_rounded,
          label: 'Đã thanh toán',
          value: '850.000đ',
        ),
        ServiceLine(
          icon: Icons.event_available_rounded,
          label: 'Ngày hết hạn',
          value: '30/06/2026',
        ),
      ],
    );
  }

  Widget _menuCard(
    String day,
    String main,
    String soup,
    String dessert,
    String status,
  ) {
    return ServiceInfoCard(
      title: day,
      subtitle: main,
      icon: Icons.lunch_dining_rounded,
      color: AppColors.serviceMeal,
      tag: status,
      children: [
        ServiceLine(
          icon: Icons.rice_bowl_rounded,
          label: 'Món chính',
          value: main,
        ),
        ServiceLine(
          icon: Icons.soup_kitchen_rounded,
          label: 'Canh',
          value: soup,
        ),
        ServiceLine(
          icon: Icons.icecream_rounded,
          label: 'Tráng miệng',
          value: dessert,
        ),
        const SizedBox(height: 14),
        const ServiceActionButton(
          text: 'Xem chi tiết bữa ăn',
          color: AppColors.serviceMeal,
          icon: Icons.visibility_rounded,
        ),
      ],
    );
  }
}
