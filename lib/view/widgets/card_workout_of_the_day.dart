import 'package:flutter/material.dart';

class CardWorkoutOfTheDay extends StatelessWidget {
  const CardWorkoutOfTheDay({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          Image.network(
            'https://pratiquefitness.com.br/blog/wp-content/uploads/2023/07/Como-aumentar-a-carga-na-academia-2.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 175,
          ),
          Container(
            color: Colors.red.withOpacity(0.8),
            padding: const EdgeInsets.only(left: 10),
            width: double.infinity,
            height: 175,
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'TREINO DO DIA',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'impact',
                  ),
                ),
                Text(
                  'Costas e Biceps',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'impact',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
