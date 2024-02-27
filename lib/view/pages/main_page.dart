import 'package:flutter/material.dart';
import '../widgets/app_bar_ga.dart';
import '../widgets/navigation_bar_ga.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarGa(),
      body: Container(
        color: Colors.white,
        child: const Center(
          child: Text('Main Page'),
        ),
      ),
      bottomNavigationBar: const NavigationBarGa(),
    );
  }
}
