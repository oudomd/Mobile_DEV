import 'package:flutter/material.dart';

List<String> images = [
  "assets/w4-s2/bird.jpg",
"assets/w4-s2/bird2.jpg",
"assets/w4-s2/insect.jpg",
"assets/w4-s2/girl.jpg",
"assets/w4-s2/man.jpg",
];

void main() =>
runApp(MaterialApp(debugShowCheckedModeBanner: false, home: ImageView()));

class ImageView extends StatefulWidget {
  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  int currentIndex = 0;

  void next() =>
  setState(() => currentIndex = (currentIndex + 1) % images.length);
  void prev() => setState(
    () => currentIndex = (currentIndex - 1 + images.length) % images.length,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: const Text('Image viewer'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.navigate_before),
            tooltip: 'Go to the previous image',
            onPressed: prev,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
            child: IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next image',
              onPressed: next,
            ),
          ),
        ],
      ),
      body: Image.asset(images[currentIndex]),
    );
  }
}
