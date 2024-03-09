import 'package:flutter/material.dart';

import '../../utils/theme_helper.dart';

class CardKcal extends StatelessWidget {
  const CardKcal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        gradient: ThemeHelper().linearGradient(),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            'Kcal',
            style: ThemeHelper().textStyleStandard(),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  width: 100,
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '200',
                        style: ThemeHelper().textStyleStandard(),
                      ),
                      Text(
                        'CONSUMIDAS',
                        style: ThemeHelper().textStyleStandard(),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        backgroundColor: Colors.white.withOpacity(0.3),
                        value: 0.5,
                        strokeWidth: 7.0,
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            '1.600',
                            style: ThemeHelper().textStyleStandard(),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            'Calorias \n consumidas',
                            style: TextStyle(
                                fontSize: 10, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '1250',
                          style: ThemeHelper().textStyleStandard(),
                        ),
                        Text(
                          'GASTAS',
                          style: ThemeHelper().textStyleStandard(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
