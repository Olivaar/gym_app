import 'package:flutter/material.dart';
import 'package:gym_app/utils/theme_helper.dart';
import 'package:gym_app/view/widgets/card_reward.dart';

class RewardsPage extends StatelessWidget {
  const RewardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            'Olá @user, voce possui @ pontos \n Resgate aqui seus premios',
            style: ThemeHelper().textStyleStandard(
              textColor: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 2/2.5,
                ),
                children: [
                  CardReward(),
                  CardReward(),
                  CardReward(),
                  CardReward(),
                  CardReward(),
                  CardReward(),
                  CardReward(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
