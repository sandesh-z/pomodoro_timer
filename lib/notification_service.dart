import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  static final _notifications = FlutterLocalNotificationsPlugin();
// static final onNotifications = BehaviorSubject<String?>();
  static Future _notificationsDetails() async {
    return const NotificationDetails(
      android: AndroidNotificationDetails(
        'Channel name',
        'Channel description',
        importance: Importance.max,
      ),
      iOS: IOSNotificationDetails(),
    );
  }

  static Future init({bool initScheduled = false}) async {
    final andriod =
        AndroidInitializationSettings('@drawable/ic_stat_notificationicon');
    final iOS = IOSInitializationSettings();
    final settings = InitializationSettings(android: andriod, iOS: iOS);
    await _notifications.initialize(
      settings,
      onSelectNotification: ((payload) async {}),
      // onNotifications.add(payload);
    );
  }

  static Future showNotification({
    int id = 0,
    String? title,
    String? body,
    String? payloads,
  }) async =>
      _notifications.show(
        id,
        title,
        body,
        await _notificationsDetails(),
        payload: payloads,
      );
}
