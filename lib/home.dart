import 'package:flutter/material.dart';
import 'transport_schedule.dart';
import 'favorites.dart';
import 'notifications.dart';
import 'authentication.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Campus Transport'),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AuthenticationPage(),
              ),
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildTransportOption(
                  context,
                  'aset_media/gambar/bus_icon.png',
                  'Campus Bus',
                  ['08:00 AM - 09:00 AM', '10:00 AM - 11:00 AM'],
                  ['Main Campus', 'Student Dorms', 'Library'],
                ),
                _buildTransportOption(
                  context,
                  'aset_media/gambar/van_icon.png',
                  'Van',
                  ['09:00 AM - 10:00 AM', '12:00 PM - 01:00 PM'],
                  ['Main Campus', 'Faculty Building', 'Sports Complex'],
                ),
                _buildTransportOption(
                  context,
                  'aset_media/gambar/bicycle_icon.png',
                  'Bicycle',
                  ['All Day'],
                  ['Around Campus'],
                ),
              ],
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavoritesPage(),
                  ),
                );
              },
              child: Text('Favorites'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationsPage(),
                  ),
                );
              },
              child: Text('Notifications'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTransportOption(
    BuildContext context,
    String imagePath,
    String buttonText,
    List<String> schedule,
    List<String> routes,
  ) {
    return Card(
      child: Column(
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TransportSchedulePage(
                    schedule: schedule,
                    routes: routes,
                  ),
                ),
              );
            },
            child: Text(buttonText),
          ),
        ],
      ),
    );
  }
}
