import 'package:flutter/material.dart';
import '../../../utils/app_routs.dart';
import '../../../utils/theme_helper.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logos/logo_white_br_transparent_full.png',
                    width: 120,
                    height: 120,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: ThemeHelper().textInputDecoration(
                      labelText: 'E-mail',
                      hintText: 'Digite seu e-mail para fazer login',
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    decoration: ThemeHelper().textInputDecoration(
                      labelText: 'Senha',
                      hintText: 'Digite sua senha para fazer login',
                    ),
                    obscureText: true,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            AppRouts.PASSWORD_RECOVERY_PAGE,
                          );
                        },
                        child: Text(
                          'Esqueci minha senha',
                          style: ThemeHelper().textStyleUnderline(),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRouts.MAIN_PAGE);
                    },
                    style: ThemeHelper().buttonStyle(),
                    child: Text(
                      'ENTRAR',
                      style: ThemeHelper().textStyleButton(),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Ainda nao possui uma conta?',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        child: Text(
                          'Cadastrar',
                          style: ThemeHelper().textStyleUnderline()
                        ),
                        onTap: () {
                          Navigator.of(context).pushNamed(AppRouts.REGISTER_PAGE);
                        },
                      ),
                    ],
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
