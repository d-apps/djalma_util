import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

String dateFormatter(String date){

  initializeDateFormatting('pt_BR', null);

  return DateFormat.yMd('pt_BR').add_jm().format(DateTime.parse(date)).toString();

}

// ignore: missing_return
String getMonthName(int month) {
  switch (month) {
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

  // ignore: missing_return
 int getMonthNumber(String month) {

   switch (month) {
     case "Janeiro" :
       return 1;
     case "Fevereiro" :
       return 2;
     case "Março" :
       return 3;
     case "Abril":
       return 4;
     case "Maio":
       return 5;
     case "Junho":
       return 6;
     case "Julho":
       return 7;
     case "Agosto":
       return 8;
     case "Setembro":
       return 9;
     case "Outubro":
       return 10;
     case "Novembro" :
       return 11;
     case "Dezembro":
       return 12;
     default:
       return 0;
   }

 }

