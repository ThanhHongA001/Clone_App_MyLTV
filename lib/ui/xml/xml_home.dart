import 'package:flutter/material.dart';

import '../../values/menu/menu_home.dart';
import '../activity/Home/HomeNewsPage.dart';
import '../activity/Home/HomeSearchPage.dart';
import '../activity/Home/HomeServicePage.dart';
import '../activity/Home/HomeFeedbackPage.dart';
import '../activity/Home/HomeSettingPage.dart';

class XmlHome extends StatelessWidget {
  final int currentTabIndex;
  final ValueChanged<int> onChangeTab;

  const XmlHome({
    super.key,
    required this.currentTabIndex,
    required this.onChangeTab,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: hienThiManHinhTheoTab(),
      bottomNavigationBar: thanhMenuDuoi(),
    );
  }

  Widget hienThiManHinhTheoTab() {
    switch (currentTabIndex) {
      case MenuHome.tabNews:
        return const HomeNewsPage();

      case MenuHome.tabSearch:
        return const HomeSearchPage();

      case MenuHome.tabService:
        return const HomeServicePage();

      case MenuHome.tabFeedback:
        return const HomeFeedbackPage();

      case MenuHome.tabSetting:
        return const HomeSettingPage();

      default:
        return const HomeNewsPage();
    }
  }

  Widget thanhMenuDuoi() {
    return BottomNavigationBar(
      currentIndex: currentTabIndex,
      onTap: onChangeTab,
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      items: MenuHome.items.map((item) {
        return BottomNavigationBarItem(
          icon: Icon(item.icon),
          label: item.title,
        );
      }).toList(),
    );
  }
}