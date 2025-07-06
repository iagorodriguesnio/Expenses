import 'package:expenses/components/transaction_user.dart';

import 'package:flutter/material.dart';

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Despesas Pessoais',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              color: Colors.blue,
              elevation: 5,
              child: Text('Gráfico'),
            ),
            TransactionUser(),
          ],
        ),
      ),
    );
  }
}
