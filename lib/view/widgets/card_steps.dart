import 'package:flutter/material.dart';
import 'package:gym_app/utils/theme_helper.dart';

class CardSteps extends StatelessWidget {
  const CardSteps({super.key});

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
            'Passos',
            style: ThemeHelper().textStyleStandard(),
          ),
          const SizedBox(height: 20,),
          Stack(
            children: [
              SizedBox(
                height: 80,
                width: 80,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  backgroundColor: Colors.white.withOpacity(0.3),
                  value: 0.8,
                  strokeWidth: 7.0,
                ),
              ),
              SizedBox(
                height: 80,
                width: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      '3.600',
                      style: ThemeHelper().textStyleStandard(),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
