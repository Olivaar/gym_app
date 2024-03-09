import 'package:flutter/material.dart';

class CardWorkout extends StatelessWidget {
  const CardWorkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            colors: [
              Color(0xff3a1515),
              Colors.red,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.only(left: 10),
        width: double.infinity,
        height: 100,
        child: Stack(
          children: [
            const Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hipertrofia',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'impact',
                  ),
                ),
                Text(
                  'Divisão: A,B,C',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'impact',
                  ),
                ),
                Text(
                  'Dias de descanso: 2',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'impact',
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
