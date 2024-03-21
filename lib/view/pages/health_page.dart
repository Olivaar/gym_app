import 'package:flutter/material.dart';
import 'package:gym_app/view/widgets/card_active_time.dart';
import 'package:gym_app/view/widgets/card_heartbeat.dart';
import 'package:gym_app/view/widgets/card_imc.dart';
import 'package:gym_app/view/widgets/card_kcal.dart';
import 'package:gym_app/view/widgets/card_steps.dart';

class HealthPage extends StatelessWidget {
  const HealthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Minha Saúde',
            style: TextStyle(
              fontSize: 28,
              fontFamily: 'impact',
            ),
          ),
          const CardKcal(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: GridView(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              children: const [
                CardActiveTime(),
                CardImc(),
                CardSteps(),
                CardHeartbeat(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
