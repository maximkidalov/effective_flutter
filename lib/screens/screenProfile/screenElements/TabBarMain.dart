import 'package:flutter/material.dart';
import 'package:sber_screen/screens/screenProfile/screenElements/tabBarProfileWidgets/TabBarProfile.dart';
import 'package:sber_screen/screens/screenProfile/screenElements/tabBarSettingsWidgets/tabBarSettings.dart';
import 'package:sber_screen/screens/screenProfile/screenElements/AccountWidget.dart';

class TabBarMain extends StatelessWidget {
  const TabBarMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: TabBar(
              dividerColor: const Color(0x1F000000),
              unselectedLabelColor: const Color(0x8C000000),
              indicatorColor: const Color(0xFF068441),
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.black,
              tabs: [Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 19),
                child: const Text(
                  'Профиль',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'SFProText',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 19),
                  child: const Text(
                    'Настройки',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'SFProText',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ]
            ),
            toolbarHeight: 256,
            title: const AccountWidget(),
          ),
          body: const TabBarView(
            children: [
              TabBarProfile(),
              TabBarSettings(),
            ],
          ),
        ),
      ),
    );
  }
}

