import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

String dateFormatter(String date){

  initializeDateFormatting('pt_BR', null);

  return DateFormat.yMd('pt_BR').add_jm().format(DateTime.parse(date)).toString();

}