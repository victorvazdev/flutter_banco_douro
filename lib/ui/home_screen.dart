import 'package:flutter/material.dart';
import 'package:flutter_banco_douro/models/account.dart';
import 'package:flutter_banco_douro/services/account_service.dart';
import 'package:flutter_banco_douro/ui/styles/colors.dart';
import 'package:flutter_banco_douro/ui/widgets/account_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<List<Account>> _futureGetAll = AccountService().getAll();

  Future<void> refreshGetAll() async {
    setState(() {
      _futureGetAll = AccountService().getAll();
    });
  }

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
        child: RefreshIndicator(
          onRefresh: refreshGetAll,
          child: FutureBuilder(
            future: _futureGetAll,
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return Center(child: CircularProgressIndicator());
                case ConnectionState.waiting:
                  return Center(child: CircularProgressIndicator());
                case ConnectionState.active:
                  return Center(child: CircularProgressIndicator());
                case ConnectionState.done:
                  {
                    if (snapshot.data == null || snapshot.data!.isEmpty) {
                      return Center(child: Text('Nenhuma conta recebida.'));
                    }

                    List<Account> listAccount = snapshot.data!;

                    return ListView.builder(
                      itemCount: listAccount.length,
                      itemBuilder: (context, index) {
                        return AccountWidget(account: listAccount[index]);
                      },
                    );
                  }
              }
            },
          ),
        ),
      ),
    );
  }
}
