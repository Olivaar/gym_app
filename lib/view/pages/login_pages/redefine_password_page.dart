import 'package:flutter/material.dart';
import '../../../utils/app_routs.dart';
import '../../../utils/theme_helper.dart';

class RedefinePasswordPage extends StatelessWidget {
  const RedefinePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: ThemeHelper().boxDecorationGradient(context),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Image.asset(
                    'assets/images/logos/logo_white_br_transparent_full.png',
                    width: 120,
                    height: 120,
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                  const Text(
                    'REDEFINIR SENHA',
                    style: TextStyle(
                      fontFamily: 'Impact',
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    decoration: ThemeHelper().textInputDecoration(
                      labelText: 'Nova senha',
                      hintText: 'Digite a nova senha',
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    decoration: ThemeHelper().textInputDecoration(
                      labelText: 'Confirmar senha',
                      hintText: 'Repita a senha',
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    style: ThemeHelper().buttonStyle(),
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRouts.LOGIN_PAGE);
                    },
                    child: Text(
                      'Salvar senha',
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
