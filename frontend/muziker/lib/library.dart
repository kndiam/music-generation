import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(// Dark background from the theme
      appBar: AppBar(
        title: Text('Library'),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {}, // Placeholder for menu button action
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "What kind of music will you make?",
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.music_note),
                  title: Text('Sunset Vibes, Latin'),
                  trailing: Icon(Icons.favorite_border),
                ),
                ListTile(
                  leading: Icon(Icons.music_note),
                  title: Text('More Drums'),
                  trailing: Icon(Icons.favorite_border),
                ),
                ListTile(
                  leading: Icon(Icons.music_note),
                  title: Text('Smoother, more synths'),
                  trailing: Icon(Icons.favorite_border),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.skip_previous),
                Icon(Icons.play_arrow),
                Icon(Icons.skip_next),
                // Include a custom icon for music wave here
                Container(
                  height: 50,
                  width: 50,
                  child: Image.asset('assets/music_wave_icon.png'), // Your icon file
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
