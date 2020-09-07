import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InternetConnection {

  static Future<bool> isInternetAvailable() async {

    print("VERIFICANDO CONEXÃO COM A INTERNET...");

    bool result;

    try {
      final list = await InternetAddress.lookup('google.com');
      if (list.isNotEmpty && list[0].rawAddress.isNotEmpty) {
        result = true;
        print('CONNECTED!');
      }
    } on SocketException catch (_) {
      print('NOT CONNECTED!');

      customSnackBar(
          message: "Você está sem conexão com a internet!",
          backgroundColor: Colors.redAccent,
          duration: Duration(seconds: 10)
      );

      result = false;
      return result;
    }

    return result;

  }

}

void customSnackBar({String title, String message, Color backgroundColor,
  SnackPosition snackPosition, Color colorText, Duration duration}){

  Get.snackbar(
    title,
    message,
    backgroundColor: backgroundColor??Theme.of(Get.context).primaryColor,
    snackPosition: snackPosition??SnackPosition.BOTTOM,
    colorText: colorText??Colors.black,
    duration: duration,
  );

}