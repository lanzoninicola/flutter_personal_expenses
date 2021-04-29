import 'package:flutter/material.dart';
import 'package:flutter_personal_expenses/components/summary.dart';
import 'package:flutter_personal_expenses/components/transaction_list.dart';
import 'package:flutter_personal_expenses/components/weekly_graph.dart';
import 'package:flutter_personal_expenses/model/Transaction.dart';
import 'package:flutter_personal_expenses/model/transactions.dart';
import 'package:google_fonts/google_fonts.dart';

Transactions transactions = Transactions();

class TransactionsScreen extends StatelessWidget {
  final List<Transaction> transactionList = transactions.all();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 247, 254, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        centerTitle: true,
        title: Text("My Transaction",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  fontSize: 16.00,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  letterSpacing: 1),
            )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Summary(),
          SizedBox(
            height: 24,
          ),
          WeeklyGraph(),
          SizedBox(
            height: 44,
          ),
          Expanded(child: TransactionList(transactionList: transactionList)),
        ],
      ),
    );
  }
}
