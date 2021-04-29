import 'package:flutter/material.dart';
import 'package:flutter_personal_expenses/components/base_graph_bar.dart';
import 'package:flutter_personal_expenses/constants/color.dart';
import 'package:google_fonts/google_fonts.dart';

class WeeklyDayGraphBar extends StatelessWidget {
  // TODO: place MAX_DAILY_AMOUNT as global configuration
  static const double MAX_DAILY_AMOUNT = 200.00;
  static const double MAX_DAILY_AMOUNT_BAR_HEIGHT = 150.00;
  final String dayWeekName;
  final double amountSpent;

  WeeklyDayGraphBar(
      {@required this.dayWeekName = "Segunda", @required this.amountSpent = 0});

  Widget buildMaxDailyAmountBar() {
    return BaseGraphBar(
      color: Color.fromRGBO(216, 228, 255, 1),
      height: MAX_DAILY_AMOUNT_BAR_HEIGHT,
    );
  }

  Widget buildSpentAmountBar() {
    return BaseGraphBar(
      color: Color.fromRGBO(92, 175, 231, 1),
      height: amountSpent > 0 ? amountSpent / MAX_DAILY_AMOUNT * 100 : 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            buildMaxDailyAmountBar(),
            buildSpentAmountBar(),
          ],
        ),
        SizedBox(
          height: 4.00,
        ),
        Text(
          dayWeekName.substring(0, 3),
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 11.00,
              color: kBlack,
              letterSpacing: .5,
            ),
          ),
        )
      ],
    );
  }
}
