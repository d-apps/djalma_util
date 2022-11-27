// Método que remove todos os caracteres especiais de uma String

extension RemoveSpecialCharacters on String {

  String removeSpecialCharacters(){

    //final String newText = text.replaceAll(RegExp("[^0-9a-zA-Z]"), "");
    //return newText;
    return this.replaceAll(RegExp("[^0-9a-zA-Z]"), "");
  }

}

