import 'package:intl/intl.dart';

getDateWithFormat(int dateMilliseconds, String patternFormat){
  if (dateMilliseconds == null) {
    return "Não informado";
  }

  final formatDate = DateFormat(patternFormat);
  final date = DateTime.fromMillisecondsSinceEpoch(dateMilliseconds).toLocal();
  return formatDate.format(date);
}