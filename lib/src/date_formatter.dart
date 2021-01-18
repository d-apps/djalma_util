import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

String dateFormatter(String date){

  initializeDateFormatting('pt_BR', null);

  return DateFormat.yMd('pt_BR').add_jm().format(DateTime.parse(date)).toString();

}

// ignore: missing_return
String getMonthName(int month){

  switch(month){

    case 1 :
      return "Janeiro";
    case 2 :
      return "Fevereiro";
    case 3 :
      return "Março";
    case 4 :
      return "Abril";
    case 5 :
      return "Maio";
    case 6 :
      return "Junho";
    case 7 :
      return "Julho";
    case 8 :
      return "Agosto";
    case 9 :
      return "Setembro";
    case 10 :
      return "Outubro";
    case 11 :
      return "Novembro";
    case 12 :
      return "Dezembro";
    default:
      return "O mês informado é inválido!";
  }

}
