import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/logo.png', width: 120),

            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 32),

                const Text(
                  'Sistema de Gestão de Contas.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 32),
                ),

                const SizedBox(height: 32),

                TextFormField(
                  decoration: InputDecoration(label: const Text('E-mail')),
                ),

                const SizedBox(height: 16),

                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(label: const Text('Senha')),
                ),

                const SizedBox(height: 32),

                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xFFFFA902)),
                  ),
                  child: const Text(
                    'Entrar',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
