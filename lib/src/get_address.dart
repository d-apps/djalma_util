

import 'package:djalmautil/src/remove_special_characters.dart';
import 'package:flutter/material.dart';
import 'package:search_cep/search_cep.dart';

Future<String> getFullAddressByCep({@required String cep, String number}) async{

  String address;

  CepInfo cepInfo = await SearchCep.searchInfoByCep(
      cep: removeSpecialCharacters(cep)
  );

  //print(cepInfo.localidade);

  if(cepInfo.localidade != null){

    address = "${cepInfo.logradouro}, ${cepInfo.bairro} - ${cepInfo.localidade}"
        " - ${cepInfo.uf}";

    if(number != null){

      address = address.replaceAll(", ", ", $number - ");

    }

  } else {
    address = "Endereço não localizado, verifique o CEP digitado!";
  }

  return address;

}