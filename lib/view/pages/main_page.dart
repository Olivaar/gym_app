import 'package:flutter/material.dart';
import 'package:gym_app/view/pages/health_page.dart';
import 'package:gym_app/view/pages/home_page.dart';
import 'package:gym_app/view/pages/profile_page.dart';
import 'package:gym_app/view/pages/rewards_page.dart';
import 'package:gym_app/view/pages/workouts_page.dart';
import '../widgets/app_bar_ga.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedPageIndex = 2;
  late List<Map<String, Object>> _pages;

  _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();

    _pages = [
      {
        'page': const WorkoutsPage(),
      },
      {
        'page': const HealthPage(),
      },
      {
        'page': const HomePage(),
      },
      {
        'page': const ProfilePage(),
      },
      {
        'page': const RewardsPage(),
      },
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarGa(),
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedPageIndex,
        backgroundColor: Colors.red,
        onDestinationSelected: _selectPage,
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
      ),
    );
  }
}
