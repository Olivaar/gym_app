import 'package:flutter/material.dart';
import '../../../utils/app_routs.dart';
import '../../../utils/theme_helper.dart';

class PasswordRecoveryPage extends StatelessWidget {
  const PasswordRecoveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: ThemeHelper().boxDecorationGradient(context),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
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
                    'RECUPERAR SENHA:',
                    style: TextStyle(
                      fontFamily: 'Impact',
                      fontSize: 25,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    decoration: ThemeHelper().textInputDecoration(
                      labelText: 'Informe o e-mail cadastrado',
                      hintText: 'E-mail cadastrado...',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRouts.REDEFINE_PASSWORD_PAGE);
                    },
                    style: ThemeHelper().buttonStyle(),
                    child: Text(
                      'Enviar e-mail',
                        style: ThemeHelper().textStyleButton(),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Lembrei minha senha',
                      style: ThemeHelper().textStyleUnderline(),
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
