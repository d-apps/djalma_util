String getFirebaseErrorMessage(String exception){

  if(exception.contains("ERROR_USER_NOT_FOUND")) return "E-mail inexistente!";
  if(exception.contains("ERROR_WRONG_PASSWORD")) return "Senha incorreta!";
  if(exception.contains("ERROR_NETWORK_REQUEST_FAILED")) return "Verifique sua conexão com a internet!";
  if(exception.contains("ERROR_USER_DISABLED")) return "Falha no login, contate o adminstrador!";
  if(exception.contains("ERROR_WEAK_PASSWORD")) return "Senha muito fraca! Digite pelo menos 6 caracteres!";
  if(exception.contains("ERROR_INVALID_EMAIL")) return "Email inválido!";
  if(exception.contains("ERROR_EMAIL_ALREADY_IN_USE")) return "O e-mail já está sendo usado!";
  if(exception.contains("There is no user record corresponding to this identifier. The user may have been deleted. (auth/user-not-found)")) return "E-mail inexistente!";
  if(exception.contains("A document cannot be written because it exceeds the maximum size allowed.")) return "A document cannot be written because it exceeds the maximum size allowed.";
  else return exception;

}