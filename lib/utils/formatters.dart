import 'package:intl/intl.dart';

String formatDate(DateTime? value,
    {String format = 'MM-dd-yyyy',
    String? stringDate,
    bool addSymbol = false}) {
  String _date;
  if (stringDate != null) {
    final time = stringDate.split(RegExp(r'\s+'));
    return !time[0].contains('1/1/1800') ? time[0] : '';
  }
  try {
    if (value == null) {
      return '';
    }
    if ((value.year) < 1900) {
      return '';
    }
    if (addSymbol) {
      _date = DateFormat(format).add_jm().format(value);
    } else {
      _date = DateFormat(format).format(value);
    }
    return _date;
  } on Exception catch (_, e) {
    return '';
  }
}

String durationFormat(Duration value) {
  if (value.inMinutes >= 60) {
    if ((60 % value.inMinutes) != 0) {
      // ignore: lines_longer_than_80_chars
      return '${value.inHours} hr : ${value.inMinutes - (value.inHours * 60)} min';
    }
    return '${value.inHours} hr';
  }
  return '${value.inMinutes} min';
}
