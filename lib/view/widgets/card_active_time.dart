import 'package:flutter/material.dart';

import '../../utils/theme_helper.dart';

class CardActiveTime extends StatelessWidget {
  const CardActiveTime({super.key});

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
            'Tempo de Atividade',
            style: ThemeHelper().textStyleStandard(),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/images/icons/relogio.png',
            height: 50,
            width: 50,
            color: Colors.white,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            '120 Min',
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'impact',
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
