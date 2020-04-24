

import 'package:djalmautil/src/remove_special_characters.dart';
import 'package:flutter/material.dart';
import 'package:search_cep/search_cep.dart';

Future<CepInfo> getFullAddressByCep({@required String cep}) async{

  CepInfo cepInfo = await SearchCep.searchInfoByCep(
      cep: removeSpecialCharacters(cep)
  );

  return cepInfo;

}