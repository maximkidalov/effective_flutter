import 'package:flutter/material.dart';
import 'package:sber_screen/screens/screenProfile/screenElements/tabBarProfileWidgets/TitleSubtitle.dart';

List<String> interests = ["Еда", "Саморазвитие", "Технологии", "Дом", "Досуг", "Забота о себе", "Наука"];

class InterestsProfile extends StatelessWidget {
  const InterestsProfile({Key? key} ): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(top: 26),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleSubtitle(title: "Интересы", subtitle: "Мы подбираем истории и предложения по темам, которые вам нравятся"),

          Container(
            margin: EdgeInsets.only(top: 16),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              direction: Axis.horizontal,
              children: interests.map((i) =>
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: const Color(0x8C000000),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Material(
                      child: InkWell(
                        onTap: (){print("onTapped");},
                        child: Container(
                          color: const Color(0x1F000000),
                            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7) ,
                            child: Text( i ,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'SFProText',
                                fontWeight: FontWeight.w500,),
                            )
                        ),
                      ),
                    )
                  )
              ).toList(),
            ),
          )

      ],
      ),
    );
  }
}