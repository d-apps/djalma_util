import 'package:djalmautil/djalmautil.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){

  group("Price Formatter", (){

    test("formatPrice", (){

     expect(formatPrice(1000), "R\$10,00");

    });

    test("formatPriceToFirestore", (){

      expect(formatPriceToFirestore("R\$10,00"), 1000);

    });

  });

}