import 'package:flutter/material.dart';

class TabBarSettings extends StatelessWidget {
  const TabBarSettings({Key? key} ): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 30,
      child: const Tab(text: 'Здесь могла быть ваша реклама'),
    );
  }
}