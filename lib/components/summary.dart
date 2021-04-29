import 'package:flutter/material.dart';
import 'package:flutter_personal_expenses/constants/color.dart';
import 'package:flutter_personal_expenses/screens/transaction_sheet.dart';
import 'package:google_fonts/google_fonts.dart';

class Summary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      title: Text('Total Balance',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
                fontSize: 12.00,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(115, 124, 148, 1),
                letterSpacing: .5),
          )),
      subtitle: Text('R\$7382',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
                fontSize: 36.00,
                fontWeight: FontWeight.w600,
                color: kBlack,
                letterSpacing: .5),
          )),
      trailing: FloatingActionButton(
        onPressed: () {
          showBottomSheet(
            context: context,
            builder: (context) => TransactionSheet(),
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Color.fromRGBO(110, 93, 231, 1),
      ),
    );
  }
}
