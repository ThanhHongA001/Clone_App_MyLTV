import 'package:flutter/material.dart';

import '../../../values/lib_color.dart';
import '../../../values/lib_style.dart';

class ItemHomeServicePage extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color backgroundColor;
  final VoidCallback onTap;

  const ItemHomeServicePage({
    super.key,
    required this.icon,
    required this.title,
    required this.backgroundColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(AppDimensions.gridCardRadius),
        onTap: onTap,
        child: Ink(
          decoration: AppDecorations.gridCard(backgroundColor),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              giaoDienIcon(),
              const SizedBox(height: 18),
              giaoDienTieuDe(),
            ],
          ),
        ),
      ),
    );
  }

  Widget giaoDienIcon() {
    return Container(
      width: AppDimensions.gridIconCircleSize,
      height: AppDimensions.gridIconCircleSize,
      decoration: AppDecorations.gridIconCircle,
      child: Icon(
        icon,
        size: AppDimensions.iconXL,
        color: AppColors.textWhite,
      ),
    );
  }

  Widget giaoDienTieuDe() {
    return Text(
      title,
      textAlign: TextAlign.center,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: AppTextStyles.gridCardTitle,
    );
  }
}