# djalma_util

Um pacote para facilitar a chamada de métodos que são comumente chamados nos projetos.

## ColorToMaterial(hex)

Converte uma Color para MaterialColor passando o hexadecimal de seis caracteres.


## Navegação usando menos código

- push(context, screen, RouteType.Material ou Cupertino);
- pushReplacement(context, screen, RouteType.Material ou RouteType.Cupertino);
- pop(context);
- pushAndRemoveUntil(context, screen, RouteType.Material ou RouteType.Cupertino);


## customSnackBar(key, message, cor, duration)


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


## showCustomDialog

Método pronto para abrir Dialog com opção de sim e não, opção não fecha ao tocar e opção sim excecuta
o método enviado por parametro.


## removeSpecialCharacters(text)

Remove caracteres especiais de uma String e substitui por vazio.



