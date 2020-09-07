import 'dart:io';

class InternetConnection {

  static Future<bool> isInternetAvailable() async {

    bool result;

    try {
      final list = await InternetAddress.lookup('google.com');
      if (list.isNotEmpty && list[0].rawAddress.isNotEmpty) {
        result = true;
        print('CONNECTED!');
      }
    } on SocketException catch (_) {
      print('NOT CONNECTED!');
      result = false;
      return result;
    }

    return result;

  }

}