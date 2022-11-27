import 'package:money2/money2.dart';

// Mostra o preço formatado para moeda brasileira dentro de Text
String formatPrice(int price){

  //*
  final Currency brlCurrency = Currency.create(
      'BRL', 2, symbol: 'R\$', pattern: 'S 0,00', invertSeparators: true
  );

  Money money = Money.fromInt(price, code: "BRL");

  return money.toString();

}

// Recebe Stiring e transforma em int para armazenar no Firetore
int formatPriceToFirestore(String price){

  /*
  final priceNoCharacter = price.replaceAll("R\$ ", "");
  final priceNoComma = priceNoCharacter.replaceAll(",", "");
  final priceNoPoint = priceNoComma.replaceAll(".", "");
   */

  final newPrice = price.substring(2, price.length).replaceAll(",", "").replaceAll(".", "");

  //print(newPrice);

  return int.tryParse(newPrice) ?? 0;

}