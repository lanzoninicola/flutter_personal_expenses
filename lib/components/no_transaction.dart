import 'package:flutter/material.dart';
import 'package:flutter_personal_expenses/theme/svg_catalog.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NoTransaction extends StatelessWidget {
  final SvgPicture noDataImage = SvgCatalog().getImage('NoData');

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            Expanded(child: noDataImage),
            Text(
              'No transacation added...',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 16.00,
                  color: Colors.grey,
                  letterSpacing: .5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
