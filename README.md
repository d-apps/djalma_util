# djalma_util

This package was made to stop creating utils classes to call common methods in projects.

## ColorToMaterialColor(String colorHexSixCharacters)

Convert Color to MaterialColor passing String without "#" (6 characters)
Color = #2196f3
final MaterialColor materialColor = colorToMaterialColor("2196f3")

## getFirebaseErrorMessage(String)

Retorna a mensagem de erro em português referente a falha.

## formatPrice(int price)

Útil para formatar preço como int vindo do Firestore e deixar pronto para mostrar num Text().

## formatPriceToFirestore(String price)

Útil para salvar valores em dinheiro em String no Firestore.


## removeSpecialCharacters(String name)

Extensão de String que remove caracteres especiais de uma String e substitui por vazio.
String.removeSpecialCharacters();

## getMonthName(int mes)

Retorna o nome do mês em português.

## getMonthNumber(String month)

Retorna o numero do mes, um numero apenas ( Janeiro = 1)

## getMonths() e getYears(int startFrom, int numberOfYearsToCount)

getMonths retorna uma lista de string com os nome dos meses.
getYears retorna uma lista de anos começando pelo qual for informado no parametro.

