import 'package:flutter/material.dart';

class TransportSchedulePage extends StatelessWidget {
  final List<String> schedule;
  final List<String> routes;

  TransportSchedulePage({required this.schedule, required this.routes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transport Schedule'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Transport Schedule',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            // Menampilkan jadwal transportasi
            for (var time in schedule) _buildScheduleItem(time),
            SizedBox(height: 20),
            // Menampilkan rute transportasi
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Routes:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  for (var route in routes) _buildRouteItem(route),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [],
        ),
      ),
    );
  }

  Widget _buildScheduleItem(String time) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Text(
        time,
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }

  Widget _buildRouteItem(String route) {
    return Row(
      children: [
        Expanded(
          child: Text(
            route,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.favorite_border), // Menggunakan ikon love kosong
          color: Colors.grey, // Warna ikon disesuaikan
          onPressed: () {
            // Tambahkan logika untuk aksi ketika ikon favorit ditekan di sini
          },
        ),
      ],
    );
  }
}
