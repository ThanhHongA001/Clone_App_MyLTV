import 'package:flutter/material.dart';

import '../../../values/lib_color.dart';
import '../../../values/lib_string.dart';
import 'xml_service_common.dart';

class XmlServiceUniform extends StatelessWidget {
  const XmlServiceUniform({super.key});

  @override
  Widget build(BuildContext context) {
    return ServicePageFrame(
      title: AppStrings.uniform,
      subtitle:
          'Đăng ký mua đồng phục, chọn size và theo dõi trạng thái đơn hàng.',
      icon: Icons.checkroom_rounded,
      color: AppColors.serviceUniform,
      children: [
        _orderCard(),
        _uniformCard(
          'Áo polo mùa hè',
          'Size M',
          '165.000đ',
          'Còn hàng',
          AppColors.serviceUniform,
          Icons.checkroom_rounded,
        ),
        _uniformCard(
          'Quần đồng phục',
          'Size 29',
          '190.000đ',
          'Còn hàng',
          AppColors.serviceEvent,
          Icons.straighten_rounded,
        ),
        _uniformCard(
          'Áo khoác mùa đông',
          'Size L',
          '320.000đ',
          'Đặt trước',
          AppColors.serviceMeal,
          Icons.ac_unit_rounded,
        ),
      ],
    );
  }

  Widget _orderCard() {
    return ServiceInfoCard(
      title: 'Đơn hàng gần nhất',
      subtitle: 'Mã đơn: DP0626-018',
      icon: Icons.local_shipping_rounded,
      color: AppColors.serviceUniform,
      tag: 'Đang xử lý',
      children: const [
        ServiceLine(
          icon: Icons.shopping_bag_rounded,
          label: 'Sản phẩm',
          value: 'Áo polo mùa hè x2',
        ),
        ServiceLine(
          icon: Icons.payments_rounded,
          label: 'Tổng tiền',
          value: '330.000đ',
        ),
        ServiceLine(
          icon: Icons.event_rounded,
          label: 'Dự kiến nhận',
          value: '29/06/2026',
        ),
      ],
    );
  }

  Widget _uniformCard(
    String title,
    String size,
    String price,
    String status,
    Color color,
    IconData icon,
  ) {
    return ServiceInfoCard(
      title: title,
      subtitle: '$size - $price',
      icon: icon,
      color: color,
      tag: status,
      children: [
        ServiceLine(
          icon: Icons.straighten_rounded,
          label: 'Size đề xuất',
          value: size,
        ),
        ServiceLine(
          icon: Icons.payments_rounded,
          label: 'Giá bán',
          value: price,
        ),
        const SizedBox(height: 14),
        ServiceActionButton(
          text: 'Thêm vào đơn hàng',
          color: color,
          icon: Icons.add_shopping_cart_rounded,
        ),
      ],
    );
  }
}
