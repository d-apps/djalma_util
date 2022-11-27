/*
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

/// This extension will convert any date as String to a formatted
/// date using system current locale.
extension dateFormatter on String {

  String toFormattedDate({showHour = false}){

    initializeDateFormatting('pt_BR', null);
    // Locale locale = Localizations.localeOf(context);
    if(this.isEmpty || DateTime.tryParse(this) == null) return "00/00/0000";
    if(showHour) return DateFormat.yMd().add_jm().format(DateTime.parse(this)).toString();
    else return DateFormat.yMd("pt_BR").format(DateTime.parse(this)).toString();
  }

  // from pt_BR
  DateTime toDateTime(){

    print(this);

    int day = int.tryParse(this.substring(0, 2))!;
    int month = int.tryParse(this.substring(3, 5))!;
    int year = int.tryParse(this.substring(6, 10))!;

    final DateTime dateTime = DateTime(
        year,
        month,
        day
    );

    return dateTime;

  }

}


 */