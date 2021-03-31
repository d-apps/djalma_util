## [1.6.7] - Adicionado método InternetConnection.isInternetAvailable(host, path).

## [1.5.7] - Removido o plugin search_cep.

## [1.5.6] - Removido o plugin dio.

## [1.5.5] - Removido o método getFullAddressByCep.

## [1.5.4] - Adicionado o método dateToDateTime

* Retorna um DateTime a partir de um data (String) informada no formato DD/MM/AAAA.

## [1.4.4] - Adicionado os métodos getMonths e getYears(int startFrom)

* getMonths retorna uma lista de string com os nome dos meses.
* getYears retorna uma lista de anos começando pelo qual for informado no parametro.

## [1.3.4] - Adicionado método getMonthNumber()

* Retorna o numero do mes, um numero apenas ( Janeiro = 1)

## [1.2.4] - Atualizado o método firebaseErrorCheck e adicionado getMonthName.

* O método firebaseErrorCheck, caso o erro não seja encontrada, retorna a prória exceptoin.
* Foi adicionado o método get

## [1.1.4] - Alterado a SnackBar de aviso de conexão para privada.

## [1.1.3] - Adicionado SnackBar no método isInternetAvailable.

## [1.1.2] - Adicionado método para checar se existe conexão com a internet.

## [1.1.0] - Removido custom snackbar.

## [1.0.9] - Removido navegação.

## [1.0.8] - Atualizado o método formatPriceToFirestore.

* Incluído checagem se o preço possui simbolo "R$ " para removê-lo ao enviar para o Firestore.

## [1.0.7] - WrapBuilder e ColumnBuilder.

* Novos construtores adicionados para facilitar caso necessário implementação.

## [1.0.6] - Atualizado FirebaseChecker e removido MediaQueryHelper.

* Adicionado outro check caso o email utilizado não esteja cadastrado.
* Removido o MediaQuery Helper (getHeight, getWidth e getOrientation), recomendo usar o package Get ja que não precisa de Context.

## [1.0.5] - Removido OneSignal Helper.

* Removido OneSignal Helper.

## [1.0.4] - Atualiação no parametro routeType.

* Parametro routeType nos métodos de navegação será opcional, se não informado será usado MaterialPageRoute.

* Novos construtores adicionados para facilitar caso necessário implementação.

## [1.0.3] - Adiconado novos métodos.

* Adicionado método getOrientation e atualizado o método de busca de CEP.

## [1.0.2] - Atualizado o método getFullAddressByCep.

* O método getFullAddressByCep recebe o cep, e opcionalmente o parametro number, que já traz o endereço com o numero e complemento caso adicionado.

## [1.0.1] - Atualizado o readme.

* Atualizado o readme.

## [1.0.0] - Primeiro release.

* Primeiro release