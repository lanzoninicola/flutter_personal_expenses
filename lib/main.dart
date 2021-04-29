import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_personal_expenses/model/transactions.dart';
import 'package:flutter_personal_expenses/screens/transactions_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Expenses",
      home: TransactionsScreen(),
    );
  }
}
