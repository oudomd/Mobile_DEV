import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child: Container(
          width: 450,
          height: 900,
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: Column(
            children: [
              // Top box
              Container(
                width: 450,
                height: 75,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Welcome to CADT',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              // Space
              SizedBox(height: 50),
              // Second Top box
              Container(
                width: 400,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    'My hobbies',
                  ),
                ),
              ),
              // Space
              SizedBox(height: 50),
              // Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 200,
                    height: 90,
                    color: Colors.indigo,
                    child: Center(
                      child: Text(
                        'Music'
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 90,
                    color: Colors.indigoAccent,
                    child: Center(
                      child: Text(
                        'Reading'
                      )
                    ),
                  )
                ]
              ),
              // Space
              SizedBox(height: 508),
              // Bottom container + circle
              Container(
                width: 450,
                height: 75,
                color: Colors.lightBlueAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Circle1
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                    // Circle 2
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                    // Circle 3
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),

              )
            ],
          ),
        ),
      ),

    ),
  )
  );
}
