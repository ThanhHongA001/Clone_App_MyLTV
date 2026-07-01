import 'package:flutter/material.dart';

import '../../activity/service/ServiceBusTracking.dart';
import '../../activity/service/ServiceClub.dart';
import '../../activity/service/ServiceCoin.dart';
import '../../activity/service/ServiceEvent.dart';
import '../../activity/service/ServiceMeal.dart';
import '../../activity/service/ServiceSurvey.dart';
import '../../activity/service/ServiceTuition.dart';
import '../../activity/service/ServiceUniform.dart';
import '../../item/home/item_home_service_page.dart';
import '../../../values/lib_color.dart';
import '../../../values/lib_string.dart';
import '../../../values/lib_style.dart';

class XmlHomeServicePage extends StatelessWidget {
  const XmlHomeServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [giaoDienTieuDe(), giaoDienDanhSachDichVu(context)],
        ),
      ),
    );
  }

  Widget giaoDienTieuDe() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: AppDimensions.paddingXL,
        bottom: AppDimensions.paddingXL,
      ),
      child: Text(
        AppStrings.service,
        textAlign: TextAlign.center,
        style: AppTextStyles.screenTitle,
      ),
    );
  }

  Widget giaoDienDanhSachDichVu(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final cardWidth = (constraints.maxWidth - 44) / 2;
          final cardHeight = cardWidth * 0.74;

          return GridView.count(
            padding: const EdgeInsets.fromLTRB(14, 4, 14, 18),
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 14,
            childAspectRatio: cardWidth / cardHeight,
            children: [
              ItemHomeServicePage(
                icon: Icons.star,
                title: AppStrings.meal,
                backgroundColor: AppColors.serviceMeal,
                onTap: () {
                  moManHinh(context, const ServiceMeal());
                },
              ),
              ItemHomeServicePage(
                icon: Icons.restaurant_menu,
                title: AppStrings.coinFund,
                backgroundColor: AppColors.serviceCoin,
                onTap: () {
                  moManHinh(context, const ServiceCoin());
                },
              ),
              ItemHomeServicePage(
                icon: Icons.credit_card,
                title: AppStrings.tuitionFee,
                backgroundColor: AppColors.serviceTuition,
                onTap: () {
                  moManHinh(context, const ServiceTuition());
                },
              ),
              ItemHomeServicePage(
                icon: Icons.calendar_month,
                title: AppStrings.event,
                backgroundColor: AppColors.serviceEvent,
                onTap: () {
                  moManHinh(context, const ServiceEvent());
                },
              ),
              ItemHomeServicePage(
                icon: Icons.format_list_bulleted,
                title: AppStrings.survey,
                backgroundColor: AppColors.serviceSurvey,
                onTap: () {
                  moManHinh(context, const ServiceSurvey());
                },
              ),
              ItemHomeServicePage(
                icon: Icons.groups,
                title: AppStrings.club,
                backgroundColor: AppColors.serviceClub,
                onTap: () {
                  moManHinh(context, const ServiceClub());
                },
              ),
              ItemHomeServicePage(
                icon: Icons.directions_car,
                title: AppStrings.busTracking,
                backgroundColor: AppColors.serviceBus,
                onTap: () {
                  moManHinh(context, const ServiceBusTracking());
                },
              ),
              ItemHomeServicePage(
                icon: Icons.checkroom,
                title: AppStrings.uniform,
                backgroundColor: AppColors.serviceUniform,
                onTap: () {
                  moManHinh(context, const ServiceUniform());
                },
              ),
            ],
          );
        },
      ),
    );
  }

  void moManHinh(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
}
