import 'package:flutter/material.dart';

import '../../utils/theme_helper.dart';

class CardHeartbeat extends StatelessWidget {
  const CardHeartbeat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        gradient: ThemeHelper().linearGradient(),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Batimentos',
            style: ThemeHelper().textStyleStandard(),
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            'assets/images/navigationBar/batimento-cardiaco.png',
            height: 50,
            width: 50,
            color: Colors.white,
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Column(
                  children: [
                    Text('98', style: ThemeHelper().textStyleStandard(),),
                    Text('BPM', style: ThemeHelper().textStyleStandard(),),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
