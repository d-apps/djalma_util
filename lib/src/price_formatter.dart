import 'package:money2/money2.dart';

// Mostra o preço formatado para moeda brasileira dentro de Text
String formatPrice(int price){

  Currency brlCurrency = Currency.create(
      'BRL', 2, symbol: 'R\$', pattern: 'S 0,00', invertSeparators: true
  );

  Money money = Money.fromInt(price, brlCurrency);

  return money.toString();

}

// Recebe Stirng e transforma em int para armazenar no Firetore
int formatPriceToFirestore(String price){

  price = price.replaceAll(",", "");
  price = price.replaceAll(".", "");

  return int.tryParse(price);

}