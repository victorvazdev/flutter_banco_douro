import 'package:flutter/material.dart';
import 'package:flutter_banco_douro/ui/styles/colors.dart';

class AddAccountModal extends StatefulWidget {
  const AddAccountModal({super.key});

  @override
  State<AddAccountModal> createState() => _AddAccountModalState();
}

class _AddAccountModalState extends State<AddAccountModal> {
  String _accountType = 'AMBROSIA';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      width: MediaQuery.of(context).size.width * 0.95,
      padding: EdgeInsets.only(
        left: 32,
        right: 32,
        top: 32,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      decoration: BoxDecoration(
        color: AppColor.lightOrange,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 140,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Icon(Icons.person_add_alt, size: 64)),
                  Text(
                    'Adicionar nova conta',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text('Preencha os dados abaixo:'),
                ],
              ),
            ),
            SizedBox(height: 32),
            SizedBox(
              height: 331,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(label: const Text('Nome')),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      label: const Text('Último nome'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text('Tipo da conta'),
                  DropdownButton<String>(
                    value: _accountType,
                    isExpanded: true,
                    items: [
                      DropdownMenuItem(
                        value: 'AMBROSIA',
                        child: Text('Ambrosia'),
                      ),
                      DropdownMenuItem(
                        value: 'CANJUCA',
                        child: Text('Canjica'),
                      ),
                      DropdownMenuItem(value: 'PUDIM', child: Text('Pudim')),
                      DropdownMenuItem(
                        value: 'BRIGADEIRO',
                        child: Text('Brigadeiro'),
                      ),
                    ],
                    onChanged: (value) {
                      if (value != null) {
                        setState(() {
                          _accountType = value;
                        });
                      }
                    },
                  ),
                  const SizedBox(height: 32),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Cancelar',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              AppColor.orange,
                            ),
                          ),
                          child: Text(
                            'Adicionar',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
