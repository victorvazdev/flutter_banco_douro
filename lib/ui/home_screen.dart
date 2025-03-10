import 'package:flutter/material.dart';
import 'package:flutter_banco_douro/models/account.dart';
import 'package:flutter_banco_douro/ui/styles/colors.dart';
import 'package:flutter_banco_douro/ui/widgets/account_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.lightGray,
        title: Text('Sistema de gestão de contas'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, 'login');
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: AccountWidget(
          account: Account(
            id: 'ID003',
            name: 'Victor',
            lastName: 'Vaz',
            balance: 1000000,
            accountType: null,
          ),
        ),
      ),
    );
  }
}
