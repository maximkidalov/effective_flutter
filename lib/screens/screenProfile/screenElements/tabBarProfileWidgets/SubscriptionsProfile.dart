import 'package:flutter/material.dart';
import 'package:sber_screen/screens/screenProfile/screenElements/tabBarProfileWidgets/TitleSubtitle.dart';

class Services{
  String name;
  String payment;
  String cost;
  String patch;
  Services(this.name, this.payment, this.cost, this.patch);
}
final List<Services> services = <Services>[Services("СберПрайм","Платеж 9 июля","199 P в месяц","assets/sber_icon.png"),
  Services("Переводы","Автопродление 21 августа", "199 P в месяц","assets/percent_circle.png")];

class SubscriptionsProfile extends StatelessWidget {
  const SubscriptionsProfile({Key? key} ): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleSubtitle(title: "У вас подключено", subtitle: "Подписки, автоплатежи и сервисы на которые  вы подписались"),

        SizedBox(width: double.infinity,
          height: 165,
          child: ListView.builder(shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: services.length,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [ Container(
                    width: 236, height: 130,
                    margin: const EdgeInsets.only(top: 20, right:8),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),
                      shadows: const [BoxShadow(color: Color(0x114F4F6C),
                        blurRadius: 14,
                        offset: Offset(0, 8),
                        spreadRadius: 0,)],),
                    child: Material(
                      child: InkWell(
                        onTap: () { print("Tapped");},
                        child: Container(
                            padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                            child: Column(
                              children: [
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [Image(image: AssetImage(services[index].patch),
                                      width: 36, height: 36),
                                    const SizedBox(width: 8),
                                    Text(services[index].name,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'SFProText',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                  ),

                                  const SizedBox(height: 24),

                                  Text(services[index].payment,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'SFProText',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),

                                  Text(services[index].cost,
                                    style: const TextStyle(
                                      color: Color(0x8C000000),
                                      fontSize: 14,
                                      fontFamily: 'SFProText',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ],
                            )
                        ),
                      ),
                    ),
                  )
                  ],
                );
            }
          ),
        )
      ],
    );
  }
}