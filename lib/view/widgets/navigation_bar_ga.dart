import 'package:flutter/material.dart';

class NavigationBarGa extends StatelessWidget {
  const NavigationBarGa({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: 2,
      backgroundColor: Theme.of(context).primaryColor,
      destinations: [
        NavigationDestination(
          icon: Image.asset(
            'assets/images/navigationBar/ginasio.png',
            width: 20,
            height: 20,
          ),
          label: 'TREINOS',
        ),
        NavigationDestination(
          icon: Image.asset(
            'assets/images/navigationBar/batimento-cardiaco.png',
            width: 20,
            height: 20,
          ),
          label: 'SAÚDE',
        ),
        NavigationDestination(
          icon: Image.asset(
            'assets/images/navigationBar/silhueta-de-icone-de-casa.png',
            width: 20,
            height: 20,
          ),
          label: 'HOME',
        ),
        NavigationDestination(
          icon: Image.asset(
            'assets/images/navigationBar/do-utilizador.png',
            width: 20,
            height: 20,
          ),
          label: 'PERFIL',
        ),
        NavigationDestination(
          icon: Image.asset(
            'assets/images/navigationBar/trofeu.png',
            width: 20,
            height: 20,
          ),
          label: 'REWARDS',
        ),
      ],
    );
  }
}
