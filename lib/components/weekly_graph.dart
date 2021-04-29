import 'package:flutter/material.dart';
import 'package:flutter_personal_expenses/components/weekly_day_graph_bar.dart';
import 'package:flutter_personal_expenses/utility/date_time_local.dart';
import 'package:intl/intl.dart';

DateTimeLocale dateTimeLocale = DateTimeLocale('pt_BR');

class WeeklyGraph extends StatefulWidget {
  @override
  _WeeklyGraphState createState() => _WeeklyGraphState();
}

class _WeeklyGraphState extends State<WeeklyGraph> {
  DateFormat dateFormat;
  List<String> daysOfWeekLocale;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          WeeklyDayGraphBar(
            dayWeekName: 'domingo',
            amountSpent: 190.15,
          ),
          SizedBox(
            width: 24.00,
          ),
          WeeklyDayGraphBar(
            dayWeekName: 'domingo',
            amountSpent: 70.15,
          ),
          SizedBox(
            width: 24.00,
          ),
          WeeklyDayGraphBar(
            dayWeekName: 'domingo',
            amountSpent: 20.15,
          ),
          SizedBox(
            width: 24.00,
          ),
          WeeklyDayGraphBar(
            dayWeekName: 'domingo',
            amountSpent: 0,
          ),
          SizedBox(
            width: 24.00,
          ),
          WeeklyDayGraphBar(
            dayWeekName: 'domingo',
            amountSpent: 15,
          ),
          SizedBox(
            width: 24.00,
          ),
          WeeklyDayGraphBar(
            dayWeekName: 'domingo',
            amountSpent: 190.15,
          ),
          SizedBox(
            width: 24.00,
          ),
          WeeklyDayGraphBar(
            dayWeekName: 'domingo',
            amountSpent: 190.15,
          ),
        ],
      ),
    );
  }
}
