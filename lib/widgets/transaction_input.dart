import 'package:flutter/material.dart';

class TransactionInput extends StatelessWidget {
  // Properties
  final titleController = TextEditingController();
  final priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Input
    return Card(
      child: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
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
              // onChanged: (inputItem) {
              //   titleInput = inputItem;
              // },
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
              // onChanged: (inputItem) => priceInput = inputItem,
            ),
            FlatButton(
              child: Text('Add Transaction'),
              textColor: Colors.orange[800],
              onPressed: () {
                // print(titleInput);
                // print(priceInput);
                print(titleController.text);
                print(priceController.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}
