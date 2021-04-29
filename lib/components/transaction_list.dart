import 'package:flutter/material.dart';
import 'package:flutter_personal_expenses/constants/color.dart';
import 'package:flutter_personal_expenses/model/Transaction.dart';
import 'package:flutter_personal_expenses/components/no_transaction.dart';
import 'package:flutter_personal_expenses/utility/date_time_local.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

// TODO: put this in the global state
DateTimeLocale dateTimeLocale = DateTimeLocale('pt_BR');

class TransactionList extends StatefulWidget {
  final List<Transaction> transactionList;

  TransactionList({this.transactionList});

  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final Widget svgStore =
      SvgPicture.asset('assets/images/store.svg', semanticsLabel: 'Store Logo');

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.00, left: 10.00, right: 10.00),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
        ),
      ),
      // height: 400,
      child: widget.transactionList != null
          ? ListView.builder(
              itemCount: widget.transactionList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: svgStore,
                    backgroundColor: Colors.grey[300],
                  ),
                  title: Text(
                    widget.transactionList[index].store,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 16.00,
                          fontWeight: FontWeight.w600,
                          color: kBlack,
                          letterSpacing: .5),
                    ),
                  ),
                  subtitle: Text(
                    // 'Date: ${dateFormat.format(widget.transactionList[index].date).toString()}',
                    'Date: ${dateTimeLocale.getDate(widget.transactionList[index].date).toString()}',
                    style: TextStyle(
                      fontSize: 12.00,
                    ),
                  ),
                  trailing: Text(
                    'R\$${widget.transactionList[index].value.toString()}',
                    style: TextStyle(
                        fontSize: 16.00,
                        fontWeight: FontWeight.w600,
                        color: kBlack,
                        letterSpacing: .5),
                  ),
                );
              },
            )
          : NoTransaction(),
    );
  }
}
