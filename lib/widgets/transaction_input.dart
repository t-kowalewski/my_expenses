import 'package:flutter/material.dart';

class TransactionInput extends StatelessWidget {
  // Properties
  final titleController = TextEditingController();
  final priceController = TextEditingController();

  // Methods
  final Function addNewTransaction;

  TransactionInput(this.addNewTransaction);

  @override
  Widget build(BuildContext context) {
    // Input
    return Card(
      child: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            // Input Fields
            TextField(
              cursorColor: Colors.orange,
              decoration: InputDecoration(
                labelText: 'Title',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange[800],
                  ),
                ),
              ),
              controller: titleController,
            ),
            TextField(
              cursorColor: Colors.orange,
              decoration: InputDecoration(
                labelText: 'Price',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange[800],
                  ),
                ),
              ),
              controller: priceController,
            ),

            // Add Button
            FlatButton(
              child: Text('Add Transaction'),
              textColor: Colors.orange[800],
              onPressed: () {
                addNewTransaction(
                  titleController.text,
                  double.parse(priceController.text),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
