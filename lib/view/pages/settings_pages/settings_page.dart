import 'package:flutter/material.dart';
import '../../../utils/theme_helper.dart';
import '../../widgets/app_bar_ga.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarGa(
        automaticallyImplyLeading: true,
      ),
      body: Container(
        decoration: ThemeHelper().boxDecorationGradient(context),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Image.asset(
                    'assets/images/logos/logo_white_br_transparent_full.png',
                    width: 120,
                    height: 120,
                  ),
                  const SizedBox(
                    height: 130,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ThemeHelper().buttonStyle(),
                    child: Text(
                      'IDIOMA',
                      style: ThemeHelper().textStyleButton(),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ThemeHelper().buttonStyle(),
                    child: Text(
                      'PERMISSÕES DO DISPOSITIVO',
                      style: ThemeHelper().textStyleButton(),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ThemeHelper().buttonStyle(),
                    child: Text(
                      'POLITICA DE PRIVACIDADE',
                      style: ThemeHelper().textStyleButton(),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ThemeHelper().buttonStyle(),
                    child: Text(
                      'TERMOS DE USO',
                      style: ThemeHelper().textStyleButton(),
                    ),
                  ),
                ],
              ),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Desenvolvido por TWT Software',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
