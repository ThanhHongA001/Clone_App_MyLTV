import 'package:flutter/material.dart';

class HomeMenuItem {
  final String title;
  final IconData icon;

  const HomeMenuItem({
    required this.title,
    required this.icon,
  });
}

class MenuHome {
  static const int tabNews = 0;
  static const int tabSearch = 1;
  static const int tabService = 2;
  static const int tabFeedback = 3;
  static const int tabSetting = 4;

  static const List<HomeMenuItem> items = [
    HomeMenuItem(
      title: 'Trang tin',
      icon: Icons.home,
    ),
    HomeMenuItem(
      title: 'Tra cứu',
      icon: Icons.manage_search,
    ),
    HomeMenuItem(
      title: 'Dịch vụ',
      icon: Icons.dashboard,
    ),
    HomeMenuItem(
      title: 'Phản hồi',
      icon: Icons.article_outlined,
    ),
    HomeMenuItem(
      title: 'Cài đặt',
      icon: Icons.settings,
    ),
  ];
}