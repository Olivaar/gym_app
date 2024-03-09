import 'package:flutter/material.dart';

class CardHealth extends StatelessWidget {
  const CardHealth({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          Image.network(
            'https://clinicasim.com/novo/wp-content/uploads/2017/03/pessoas-se-exercitando-para-ter-uma-vida-saudavel.jpg',
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
                  'Saúde',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'impact',
                  ),
                ),
                Text(
                  'Metas diárias',
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
