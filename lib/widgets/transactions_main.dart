import 'package:flutter/material.dart';

import './transaction_input.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

// Widget Class
class TransactionsMain extends StatefulWidget {
  @override
  _TransactionsMainState createState() => _TransactionsMainState();
}

// State Class
class _TransactionsMainState extends State<TransactionsMain> {
  // Properties
  final List<Transaction> _transactions = [
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
    return Column(
      children: <Widget>[
        // Input
        TransactionInput(),

        // List of Transactions
        TransactionList(
          transactions: _transactions,
        ),
      ],
    );
  }
}
