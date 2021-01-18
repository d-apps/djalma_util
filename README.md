# djalma_util

Um pacote para facilitar a chamada de métodos que são comumente chamados nos projetos.

## ColorToMaterialColor(hex)

Converte uma Color para MaterialColor passando o hexadecimal de seis caracteres.

## dateFormatter()

Formata a data vinda do DateTime para o Brasil.
Sem dateFormatter: 1969-07-20 20:18:04 0000
Com dateFormatter: 20/07/1969 20:18


## firebaseErrorCheck(exception)

Lê e já retorna a mensagem de erro em português pronta para o usuário da falha.


## getFullAddressByCep(cep)

Busca o endereço completo do usuário pelo CEP.


## formatPrice(int)

Útil para formatar preço como int vindo do Firestore e deixar pronto para mostrar num Text().

## formatPriceToFirestore()

Útil para salvar valores em dinheiro em String no Firestore.


## removeSpecialCharacters(text)

Remove caracteres especiais de uma String e substitui por vazio.


## WrapBuilder e ColumnBuilder

## Conexão com a internet

O método InternetConnection.isInternetAvailable() retorna true se houver conectividade com a internet.

## getMonthName(int mes)

Retorna o nome do mês em português.

## getMonthNumber(String month)

Retorna o numero do mes, um numero apenas ( Janeiro = 1)


