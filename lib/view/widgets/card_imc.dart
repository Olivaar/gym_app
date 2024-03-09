import 'package:flutter/material.dart';

import '../../utils/theme_helper.dart';

class CardImc extends StatelessWidget {
  const CardImc({super.key});

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
            'IMC',
            style: ThemeHelper().textStyleStandard(),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            '27.5',
            style: TextStyle(
              fontFamily: 'impact',
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Na Média',
            style: ThemeHelper().textStyleStandard(),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: LinearProgressIndicator(
              color: Colors.white,
              backgroundColor: Colors.white.withOpacity(0.3),
              value: 0.4,
              minHeight: 8,
            ),
          ),
        ],
      ),
    );
  }
}
