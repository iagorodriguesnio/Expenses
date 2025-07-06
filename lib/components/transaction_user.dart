import 'dart:math';

import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final List<Transaction> _transactions = [
    Transaction(
      id: 't1',
      title: 'Tênis de Corrida',
      value: 399.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 25.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Cartão de Crédito',
      value: 1099.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Conta de Água',
      value: 92.50,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      title: 'Fatura do Operadora',
      value: 59.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't6',
      title: 'Gasolina',
      value: 58.00,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(onSubmit: _addTransaction),
        TransactionList(transactions: _transactions),
      ],
    );
  }
}
