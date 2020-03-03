import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pesronal Expenses',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // Properties
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'Milk',
      amount: 1.85,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Bread',
      amount: 2.45,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Expenses'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // Chart
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.orange,
              child: Text('Chart'),
              elevation: 5,
            ),
          ),

          // Input
          Card(
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
                  ),
                  FlatButton(
                    child: Text('Add Transaction'),
                    textColor: Colors.orange[800],
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),

          // List of Transactions
          Column(
            children: transactions.map((item) {
              return Card(
                child: Row(
                  children: <Widget>[
                    // Price
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.deepOrange,
                          width: 2,
                        ),
                      ),
                      child: Text(
                        '\$ ${item.amount}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ),

                    // Title & Date
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          item.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            // color: Colors.deepOrange,
                          ),
                        ),
                        Text(
                          DateFormat('MMMM d, y - H:m').format(item.date),
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
