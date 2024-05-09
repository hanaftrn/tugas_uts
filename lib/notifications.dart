import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Notifications',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            _buildNotificationItem(
                'New schedule for Campus Bus: 10:00 AM - 11:00 AM'),
            _buildNotificationItem(
                'Van schedule changed to 11:00 AM - 12:00 PM'),
            _buildNotificationItem(
                'Bicycle route extended to include new stops'),
            // Add more notification items as needed
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationItem(String notification) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        title: Text(
          notification,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
