import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: true,
    home: Container(
      color: Colors.grey,
      padding: EdgeInsets.all(60),
      margin: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(
              bottom: 20,
            ),
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(30)
            ),
            child: Center(
              child: Text(
                'OOP',
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              color: Colors.blue[300],
              borderRadius: BorderRadius.circular(30)
            ),
            child: Center(
              child: Text(
                'DART',
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [Colors.blue[300]!, Colors.blue[600]!],
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Text(
                'Flutter',
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,

                )
              ),
            ),
          )
        ],
      ),
    )
  )
  );
}
