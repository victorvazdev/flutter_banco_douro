import 'package:flutter/material.dart';
import 'package:flutter_banco_douro/ui/styles/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/banner.png'),

          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset('assets/images/stars.png'),
          ),

          Padding(
            padding: EdgeInsets.all(32),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        SizedBox(height: 128),

                        Column(
                          children: [
                            SizedBox(height: 105),
                            Image.asset('assets/images/logo.png', width: 120),
                          ],
                        ),

                        const SizedBox(height: 32),

                        const Text(
                          'Sistema de Gestão de Contas.',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 32),
                        ),

                        const SizedBox(height: 32),

                        TextFormField(
                          decoration: InputDecoration(
                            label: const Text('E-mail'),
                          ),
                        ),

                        const SizedBox(height: 16),

                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            label: const Text('Senha'),
                          ),
                        ),

                        const SizedBox(height: 32),

                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, 'home');
                          },
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              AppColor.orange,
                            ),
                          ),
                          child: const Text(
                            'Entrar',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
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
