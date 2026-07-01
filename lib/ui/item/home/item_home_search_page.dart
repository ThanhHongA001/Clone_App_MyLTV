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
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              giaoDienIcon(),
              const SizedBox(height: 10),
              giaoDienTieuDe(),
            ],
          ),
        ),
      ),
    );
  }

  Widget giaoDienIcon() {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(color: iconCircleColor, shape: BoxShape.circle),
      child: Icon(icon, color: Colors.white, size: 30),
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
        fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
