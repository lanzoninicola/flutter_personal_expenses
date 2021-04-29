import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class DateTimeLocale {
  final String locale;
  DateFormat dateFormat;

  DateTimeLocale(this.locale);

  String getDate(DateTime date) {
    initializeDateFormatting();
    dateFormat = DateFormat.yMd(locale);
    return dateFormat.format(date);
  }

  List get daysOfWeekName {
    initializeDateFormatting();
    return DateFormat.EEEE(locale).dateSymbols.STANDALONEWEEKDAYS;
  }
}
