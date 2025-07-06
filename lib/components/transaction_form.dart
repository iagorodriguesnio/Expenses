import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final valueController = TextEditingController();
  final titleController = TextEditingController();

  final void Function(String title, double values) onSubmit;

  TransactionForm({required this.onSubmit, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Título',
              ),
            ),
            TextFormField(
              controller: valueController,
              decoration: InputDecoration(
                labelText: 'R\$ Valor',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    final title = titleController.text;
                    final value = double.tryParse(valueController.text) ?? 0;
                    onSubmit(title, value);
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.purple,
                  ),
                  child: Text('Gerar Transação'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
