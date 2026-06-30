import 'package:flutter/material.dart';

class ItemHomeSearchPage extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color backgroundColor;
  final Color iconCircleColor;
  final VoidCallback onTap;

  const ItemHomeSearchPage({
    super.key,
    required this.title,
    required this.icon,
    required this.backgroundColor,
    required this.iconCircleColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(7),
      child: InkWell(
        borderRadius: BorderRadius.circular(7),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              giaoDienIcon(),
              const SizedBox(height: 22),
              giaoDienTieuDe(),
            ],
          ),
        ),
      ),
    );
  }

  Widget giaoDienIcon() {
    return Container(
      width: 76,
      height: 76,
      decoration: BoxDecoration(
        color: iconCircleColor,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: Colors.white,
        size: 32,
      ),
    );
  }

  Widget giaoDienTieuDe() {
    return Text(
      title,
      textAlign: TextAlign.center,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
