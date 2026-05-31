import 'package:flutter/material.dart';
class HobbyCard extends StatelessWidget {
  const HobbyCard({
    required this.title,
    required this.icon,
    this.color = Colors.blue,
  });
  final String title;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          SizedBox(width: 20),
          Text(title, style: TextStyle(color: Colors.white, fontSize: 18)),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My Hobbies')),
        body: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HobbyCard(title: 'Reading', icon: Icons.book, color: Colors.green,),
              SizedBox(height: 10),
              HobbyCard(title: 'Listening to music', icon: Icons.music_note),
            ],
          ),
        ),
      ),
    ),
  );
}
