import 'package:flutter/material.dart';
import '../local_notification.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Local Notifications")),
      body: Center(
        child: ElevatedButton(
          onPressed: NotificationService.showNotification,
          child: Text("Show Notification"),
        ),
      ),
    );
  }
}