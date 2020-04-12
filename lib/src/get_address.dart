import 'package:djalmautil/src/remove_special_characters.dart';
import 'package:search_cep/search_cep.dart';

Future<String> getFullAddressByCep(String cep) async{

  String address;

    CepInfo cepInfo = await SearchCep.searchInfoByCep(
        cep: removeSpecialCharacters(cep)
    );

    //print(cepInfo.localidade);

    if(cepInfo.localidade != null){

      address = "${cepInfo.logradouro}, ${cepInfo.bairro}, ${cepInfo.localidade}"
          " - ${cepInfo.uf}";

    } else {
      address = "Endereço não localizado, verifique o CEP digitado!";
    }

    return address;

}