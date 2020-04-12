import 'package:dio/dio.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class OneSignalHelper {

  static Future<void> init(String appId) async {

    await OneSignal.shared.init(appId);

    await OneSignal.shared.setInFocusDisplayType(OSNotificationDisplayType.notification);

    await OneSignal.shared.getPermissionSubscriptionState().then((status) async{

      String uuid = status.subscriptionStatus.userId;

      print("UUID: $uuid");


    });


  }

  static Future<void> sendNotificationToAllDevices(String title, String content, String apiKey, String appId ) async{

    final _dio = Dio();

    final options = Uri(

      scheme: "https",
      host: "onesignal.com",
      path: "/api/v1/notifications",
      port: 443,

    );

    await _dio.post(

      options.toString(),
      data: {
        "app_id": appId,
        "headings": {"en": title},
        "contents": {"en": content},
        "included_segments": ["All"]
      },
      options: Options(
        headers: {
          "Content-Type": "application/json; charset=utf-8",
          "Authorization": "Basic $apiKey",
        },
      ),
    );


  }

}