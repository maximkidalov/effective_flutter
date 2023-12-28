import 'package:flutter/material.dart';

class AccountWidget extends StatelessWidget {
  const AccountWidget({Key? key} ): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [ IconButton(onPressed:(){} ,
              icon: const Image(image: AssetImage('assets/exit_screen.png'),
                   width: 24, height: 24)),
            IconButton(onPressed:(){} ,
                icon: const Image(image: AssetImage('assets/exit_account.png'),
                    width: 24, height: 24))],
        ),
        const Column(
          children: [Image(image: AssetImage('assets/photo.png'),
              width: 110, height: 110),
            SizedBox(height: 36,),
            Text("Екатерина",
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'SFProText',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        )
      ],
    );
  }
}