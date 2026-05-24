import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: true,
    home: Scaffold(
      body: Center(
        child: Text(
          'Hello my name is oudom',
          style: TextStyle(color: Colors.orange, fontSize: 50),

        ),
      )
    )
  )
  );
}
