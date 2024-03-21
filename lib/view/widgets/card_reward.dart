import 'package:flutter/material.dart';
import '../../utils/theme_helper.dart';

class CardReward extends StatelessWidget {
  const CardReward({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: ThemeHelper().linearGradient(),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            '@produto',
            style: ThemeHelper().textStyleStandard(),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://a-static.mlcdn.com.br/450x450/creatina-pura-300g-max-titanium/drmuscleemporiofitness/4044767886a911ecb5c14201ac185055/a77dfaef01f729fa534112cfe726636e.jpeg',
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '98 Pontos',
            style: ThemeHelper().textStyleStandard(),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
            child: const Text(
              'RESGATAR',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
