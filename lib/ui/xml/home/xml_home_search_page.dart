import 'package:flutter/material.dart';

import '../../item/home/item_home_search_page.dart';

import '../../activity/search/SearchOnlineStudy.dart';
import '../search/xmlsearchattendance.dart';
import '../search/xmlsearchbus.dart';
import '../search/xmlsearchhomework.dart';
import '../search/xmlsearchnotification.dart';
import '../search/xmlsearchrewarddiscipline.dart';
import '../search/xmlsearchscore.dart';
import '../search/xmlsearchtimetable.dart';

class XmlHomeSearchPage extends StatelessWidget {
  const XmlHomeSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffcf8fd),
      appBar: appBarTraCuu(),
      body: Column(children: [giaoDienDanhSachTraCuu(context)]),
    );
  }

  PreferredSizeWidget appBarTraCuu() {
    return AppBar(
      backgroundColor: const Color(0xfffcf8fd),
      elevation: 0,
      centerTitle: true,
      title: const Text(
        'Tra cứu',
        style: TextStyle(
          color: Color(0xff2f8ed8),
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget giaoDienDanhSachTraCuu(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final cardWidth = (constraints.maxWidth - 44) / 2;
          final cardHeight = cardWidth * 0.74;

          return GridView.count(
            padding: const EdgeInsets.fromLTRB(14, 8, 14, 18),
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 14,
            childAspectRatio: cardWidth / cardHeight,
            children: [
              giaoDienOThongBao(context),
              giaoDienOChuyenCan(context),
              giaoDienOBaiTapVeNha(context),
              giaoDienOSoDiem(context),
              giaoDienOKhenThuongKyLuat(context),
              giaoDienOThoiKhoaBieu(context),
              giaoDienOHocTapOnline(context),
              giaoDienOXeTuyen(context),
            ],
          );
        },
      ),
    );
  }

  void moManHinh(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  Widget giaoDienOThongBao(BuildContext context) {
    return ItemHomeSearchPage(
      title: 'Thông báo',
      icon: Icons.notifications,
      backgroundColor: const Color(0xff459d91),
      iconCircleColor: const Color(0xff64b9ad),
      onTap: () {
        moManHinh(context, const XmlSearchNotification());
      },
    );
  }

  Widget giaoDienOChuyenCan(BuildContext context) {
    return ItemHomeSearchPage(
      title: 'Chuyên cần',
      icon: Icons.account_box,
      backgroundColor: const Color(0xff6f8793),
      iconCircleColor: const Color(0xff90a5b0),
      onTap: () {
        moManHinh(context, const XmlSearchAttendance());
      },
    );
  }

  Widget giaoDienOBaiTapVeNha(BuildContext context) {
    return ItemHomeSearchPage(
      title: 'Bài tập về nhà',
      icon: Icons.menu_book,
      backgroundColor: const Color(0xff498daf),
      iconCircleColor: const Color(0xff70aac8),
      onTap: () {
        moManHinh(context, const XmlSearchHomework());
      },
    );
  }

  Widget giaoDienOSoDiem(BuildContext context) {
    return ItemHomeSearchPage(
      title: 'Sổ điểm',
      icon: Icons.calendar_month,
      backgroundColor: const Color(0xffffa536),
      iconCircleColor: const Color(0xffffbd5d),
      onTap: () {
        moManHinh(context, const XmlSearchScore());
      },
    );
  }

  Widget giaoDienOKhenThuongKyLuat(BuildContext context) {
    return ItemHomeSearchPage(
      title: 'Khen thưởng - Kỷ luật',
      icon: Icons.star,
      backgroundColor: const Color(0xfff1734c),
      iconCircleColor: const Color(0xffff936d),
      onTap: () {
        moManHinh(context, const XmlSearchRewardDiscipline());
      },
    );
  }

  Widget giaoDienOThoiKhoaBieu(BuildContext context) {
    return ItemHomeSearchPage(
      title: 'Thời khóa biểu',
      icon: Icons.calendar_today,
      backgroundColor: const Color(0xff48a6e8),
      iconCircleColor: const Color(0xff68bdee),
      onTap: () {
        moManHinh(context, const XmlSearchTimetable());
      },
    );
  }

  Widget giaoDienOHocTapOnline(BuildContext context) {
    return ItemHomeSearchPage(
      title: 'Học tập online',
      icon: Icons.laptop_mac,
      backgroundColor: const Color(0xff6338b7),
      iconCircleColor: const Color(0xff855bd1),
      onTap: () {
        moManHinh(context, const SearchOnlineStudy());
      },
    );
  }

  Widget giaoDienOXeTuyen(BuildContext context) {
    return ItemHomeSearchPage(
      title: 'Xe tuyến',
      icon: Icons.directions_bus,
      backgroundColor: const Color(0xff58aa70),
      iconCircleColor: const Color(0xff78c98f),
      onTap: () {
        moManHinh(context, const XmlSearchBus());
      },
    );
  }
}

class ManHinhDangPhatTrien extends StatelessWidget {
  final String title;

  const ManHinhDangPhatTrien({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), centerTitle: true),
      body: Center(
        child: Text(
          'Màn hình $title đang được phát triển',
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
