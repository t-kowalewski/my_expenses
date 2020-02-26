import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Expenses'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          // List of Transactions
          Card(
            color: Colors.green,
            child: Text('List of TX'),
          ),
        ],
      ),
    );
  }
}
