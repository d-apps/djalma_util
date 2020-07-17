String firebaseErrorCheck(String exception){

  String message;

  if(exception.contains("ERROR_USER_NOT_FOUND")){

    message = "E-mail inexistente!";

  } else if(exception.contains("ERROR_WRONG_PASSWORD")){

    message = "Senha incorreta!";

  } else if(exception.contains("ERROR_NETWORK_REQUEST_FAILED")){

    message = "Verifique sua conexão com a internet!";

  } else if (exception.contains("ERROR_USER_DISABLED")) {

    message = "Falha no login, contate o adminstrador!";

  } else if (exception.contains("ERROR_WEAK_PASSWORD")) {

    message = "Senha muito fraca! Digite pelo menos 6 caracteres!";

  } else if (exception.contains("ERROR_INVALID_EMAIL")) {

    message = "Email inválido!";

  } else if (exception.contains("ERROR_EMAIL_ALREADY_IN_USE")) {

    message = "O e-mail já está sendo usado!";

  } else if (exception.contains("There is no user record corresponding to this identifier. The user may have been deleted. (auth/user-not-found)")) {

    message = "E-mail inexistente!";

  }

  return message;

}