import 'package:djalmautil/djalmautil.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){

  group("Month Year Test", (){

    test("getMonthName", (){

      expect(getMonthName(1), "Janeiro");

    });

    test("getMonthNumber", (){

      expect(getMonthNumber("Janeiro"), 1);

    });

    test("getMonths", (){

      final months = <String>[

        "Janeiro",
        "Fevereiro",
        "Março",
        "Abril",
        "Maio",
        "Junho",
        "Julho",
        "Agosto",
        "Setembro",
        "Outubro",
        "Novembro",
        "Dezembro",

      ];

      expect(getMonths(), months);

    });


    test("getYears", (){

      expect(getYears(startFrom: 2000, numberOfYearsToCount: 2),  [ "2000", "2001" ]);

    });

  });

}