import 'package:intl/intl.dart';

class DateTimeFormat {
  DateTimeFormat._();

  static yyyyMMdd(DateTime date) {
    return DateFormat("yyyy-MM-dd").format(date);
  }

  static mmDDyyyy(DateTime date) {
    return DateFormat("MM/dd/yyyy").format(date);
  }

  static toDmy(DateTime? date) {
    return date == null ? "" : DateFormat("dd/MM/yyyy").format(date);
  }

  static ddMMyyyyHHmm(String date) {
    return DateFormat("dd/MM/yyyy HH:mm").parse(date);
  }

  static ddMMyyyy(String date) {
    return DateFormat("dd/MM/yyyy").parse(date);
  }
}
