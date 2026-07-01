import 'package:flutter/material.dart';

import '../../../values/lib_color.dart';
import '../../../values/lib_string.dart';
import 'xml_service_common.dart';

class XmlServiceCoin extends StatelessWidget {
  const XmlServiceCoin({super.key});

  @override
  Widget build(BuildContext context) {
    return ServicePageFrame(
      title: AppStrings.coinFund,
      subtitle:
          'Quản lý quỹ xu học đường, lịch sử nạp - chi và ưu đãi đang có.',
      icon: Icons.savings_rounded,
      color: AppColors.serviceCoin,
      children: [
        _coinOverview(),
        _transaction(
          'Nạp quỹ tháng 06',
          '+ 300 xu',
          '24/06/2026',
          'Đã duyệt',
          Icons.add_circle_rounded,
          const Color(0xff4ba69a),
        ),
        _transaction(
          'Mua nước tại căn tin',
          '- 15 xu',
          '23/06/2026',
          'Hoàn tất',
          Icons.local_drink_rounded,
          AppColors.serviceCoin,
        ),
        _transaction(
          'Đổi phần thưởng học tập',
          '- 50 xu',
          '20/06/2026',
          'Hoàn tất',
          Icons.card_giftcard_rounded,
          AppColors.serviceMeal,
        ),
      ],
    );
  }

  Widget _coinOverview() {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xffece6ef)),
      ),
      child: const Row(
        children: [
          Expanded(
            child: _CoinStat(label: 'Số dư', value: '235 xu'),
          ),
          Expanded(
            child: _CoinStat(label: 'Đã nạp', value: '500 xu'),
          ),
          Expanded(
            child: _CoinStat(label: 'Đã dùng', value: '265 xu'),
          ),
        ],
      ),
    );
  }

  Widget _transaction(
    String title,
    String amount,
    String date,
    String status,
    IconData icon,
    Color color,
  ) {
    return ServiceInfoCard(
      title: title,
      subtitle: date,
      icon: icon,
      color: color,
      tag: status,
      children: [
        ServiceLine(
          icon: Icons.account_balance_wallet_rounded,
          label: 'Biến động',
          value: amount,
        ),
        const ServiceLine(
          icon: Icons.person_rounded,
          label: 'Tài khoản',
          value: 'Nguyễn Minh Anh - 10A1',
        ),
      ],
    );
  }
}

class _CoinStat extends StatelessWidget {
  final String label;
  final String value;

  const _CoinStat({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            color: AppColors.serviceCoin,
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: AppColors.textSecondary,
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
