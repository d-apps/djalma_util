// Método que remove todos os caracteres especiais de uma String
String removeSpecialCharacters(String text){

  String newText = text.replaceAll(RegExp("[^0-9a-zA-Z]"), "");

  return newText;

}