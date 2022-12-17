import 'dart:io';

import 'package:http/http.dart' as http;

class InternetConnection {

  static Future<bool> isUrlAvailable(String host, String path) async {

    http.Client client = http.Client();

    try{

      final http.Response response = await client.get(
          Uri.https(host, path)
      );

      if(response.statusCode == 200){
        print('URL AVAILABLE!');
        return true;
      }

    } catch(e){

      print('URL UNAVAILABLE!');
      return false;

    } finally{
      client.close();
    }

    return false;

  }

  static Future<bool> isInternetAvailable() async {

    print("VERIFICANDO CONEXÃO COM A INTERNET...");

    try {

      final list = await InternetAddress.lookup('google.com');
      if (list.isNotEmpty && list[0].rawAddress.isNotEmpty) {

        print('CONNECTED!');
        return true;

      }
    } on SocketException catch (_) {

      print('NOT CONNECTED!');
      return false;

    }

    return false;

  }

}