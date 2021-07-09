import 'dart:io';

import 'package:http/http.dart' as http;

class InternetConnection {

  static Future<bool> isUrlAvailable(String host, String path) async {

    bool res = false;

    http.Client client = http.Client();

    try{

      final http.Response response = await client.get(
          Uri.https(host, path)
      );

      if(response.statusCode == 200){
        print('URL AVAILABLE!');
        res = true;
      }

    } catch(e){

      print('URL UNAVAILABLE!');
      return false;

    } finally{
      client.close();
    }

    return res;

  }

  static Future<bool> isInternetAvailable() async {

    bool res = false;

    print("VERIFICANDO CONEXÃO COM A INTERNET...");

    try {
      final list = await InternetAddress.lookup('google.com');
      if (list.isNotEmpty && list[0].rawAddress.isNotEmpty) {

        print('CONNECTED!');
        res = true;

      }
    } on SocketException catch (_) {

      print('NOT CONNECTED!');
      return false;

    }

    return res;


  }

}