import 'package:flutter/material.dart';
import 'package:sber_screen/screens/screenProfile/screenElements/tabBarProfileWidgets/SubscriptionsProfile.dart';
import 'package:sber_screen/screens/screenProfile/screenElements/tabBarProfileWidgets/TariffProfile.dart';
import 'package:sber_screen/screens/screenProfile/screenElements/tabBarProfileWidgets/InterestsProfile.dart';

class TabBarProfile extends StatelessWidget {
  const TabBarProfile({Key? key} ): super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(16, 30, 0, 30),
      child: Column(
        children: [SubscriptionsProfile() , TariffProfile(), InterestsProfile()],
      ),
    );
  }
}