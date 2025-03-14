import 'package:flutter/material.dart';

class AddAccountModal extends StatelessWidget {
  const AddAccountModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      width: MediaQuery.of(context).size.width * 0.95,
      padding: EdgeInsets.all(32),
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
        ],
      ),
    );
  }
}
