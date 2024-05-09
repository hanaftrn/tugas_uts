import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Favorites',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            _buildFavoriteItem(
              'aset_media/gambar/bus_icon.png', // Path gambar bus
              'Main Campus - Student Dorms',
            ),
            _buildFavoriteItem(
              'aset_media/gambar/van_icon.png', // Path gambar van
              'Main Campus - Library',
            ),
            _buildFavoriteItem(
              'aset_media/gambar/bicycle_icon.png', // Path gambar sepeda
              'Student Dorms - Sports Complex',
            ),
            // Add more favorite items as needed
          ],
        ),
      ),
    );
  }

  Widget _buildFavoriteItem(String imagePath, String route) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        leading: Image.asset(
          imagePath,
          width: 50, // Sesuaikan ukuran gambar sesuai kebutuhan
          height: 50, // Sesuaikan ukuran gambar sesuai kebutuhan
        ),
        title: Row(
          children: [
            Expanded(
              child: Text(
                route,
                style: TextStyle(fontSize: 18),
              ),
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              color: Colors.red,
              onPressed: () {
                // Implement logic to add/remove route from favorites
              },
            ),
          ],
        ),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            // Implement logic to remove the favorite route
          },
        ),
      ),
    );
  }
}
