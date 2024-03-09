import 'package:flutter/material.dart';
import 'package:gym_app/view/widgets/card_health.dart';
import 'package:gym_app/view/widgets/card_workout_of_the_day.dart';
import 'package:gym_app/view/widgets/carousel_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          Expanded(
            flex: 1,
            child: CarouselHomePage(),
          ),
          Divider(),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardWorkoutOfTheDay(),
                  CardHealth(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
