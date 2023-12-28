import 'package:flutter/material.dart';

class TitleSubtitle extends StatelessWidget {

  final String title;
  final String subtitle;

  const TitleSubtitle({Key? key, required this.title, required this.subtitle} ): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text( title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'SFProText',
                fontWeight: FontWeight.w700,
              ),
            ),

            const SizedBox(height: 8),

            Text(subtitle,
              style: const TextStyle(
                color: Color(0x8C000000),
                fontSize: 14,
                fontFamily: 'SFProText',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        )
    );
  }
}