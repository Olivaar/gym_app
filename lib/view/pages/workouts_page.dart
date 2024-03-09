import 'package:flutter/material.dart';
import 'package:gym_app/view/widgets/card_workout.dart';

class WorkoutsPage extends StatelessWidget {
  const WorkoutsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Column(
        children: [
          Text(
            'Meus Treinos',
            style: TextStyle(
              fontSize: 28,
              fontFamily: 'impact',
            ),
          ),
          SizedBox(height: 20,),
          SearchBar(
            hintText: 'Pesquisar Treinos',
            leading: Icon(Icons.search),
          ),
          SizedBox(height: 20,),
          CardWorkout(),
          CardWorkout(),
          CardWorkout(),
          CardWorkout(),
        ],
      ),
    );
  }
}
