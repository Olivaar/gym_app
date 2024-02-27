import 'package:flutter/material.dart';
import '../../../utils/theme_helper.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
                      labelText: 'Nome completo',
                      hintText: 'Digite seu nome completo',
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    decoration: ThemeHelper().textInputDecoration(
                      labelText: 'E-mail',
                      hintText: 'Digite seu e-mail',
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade600),
                    ),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'Data de Nascimento',
                            style: TextStyle(
                              fontSize: 16
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.calendar_month,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    decoration: ThemeHelper().textInputDecoration(
                      labelText: 'Senha',
                      hintText: 'Digite sua senha',
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    decoration: ThemeHelper().textInputDecoration(
                      labelText: 'Confirmar senha',
                      hintText: 'Digite sua senha novamente',
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.red,
                            fillColor: MaterialStateColor.resolveWith(
                                (states) => Colors.white),
                            value: true,
                            onChanged: (con) {},
                          ),
                          const Text(
                            'PERSONAL',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.red,
                            fillColor: MaterialStateColor.resolveWith(
                                (states) => Colors.white),
                            value: false,
                            onChanged: (con) {},
                          ),
                          const Text(
                            'ALUNO',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ThemeHelper().buttonStyle(),
                    child: Text(
                      'CADASTRAR',
                      style: ThemeHelper().textStyleButton(),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Já tenho uma conta',
                      style: ThemeHelper().textStyleUnderline(),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'assets/images/icons/gmail.png',
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'assets/images/icons/facebook.png',
                            width: 40,
                            height: 40,
                          ),
                        ),
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
