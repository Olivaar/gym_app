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
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Minha Saúde',
            style: TextStyle(
              fontSize: 28,
              fontFamily: 'impact',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CardKcal(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardSteps(),
                CardHeartbeat(),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardActiveTime(),
                CardImc(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
