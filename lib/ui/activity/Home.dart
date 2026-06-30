import 'package:flutter/material.dart';

import '../xml/xml_home.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentTabIndex = 0;

  void _onChangeTab(int index) {
    setState(() {
      _currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return XmlHome(
      currentTabIndex: _currentTabIndex,
      onChangeTab: _onChangeTab,
    );
  }
}