import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

// Widget Class
class TransactionList extends StatelessWidget {
  // Properties
  final List<Transaction> transactions;

  TransactionList ({@required this.transactions});

  @override
  Widget build(BuildContext context) {
    // List of Transactions
    return Column(
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
    );
  }
}
