import 'package:flutter/material.dart';

class GreenScreen extends StatelessWidget {
  const GreenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(child: Text("Green Screen")),
    );
  }
}

enum AppTabs { red, green, blue }

class RedScreen extends StatelessWidget {
  const RedScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(child: Text('Red Screen')),
    );
  }
}

class BlueScreen extends StatelessWidget {
  const BlueScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(child: Text('Blue Screen')),
    );
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  AppTabs curTab = AppTabs.red;
  Widget get content {
    if (curTab == AppTabs.red) return RedScreen();
    if (curTab == AppTabs.blue)
      return BlueScreen();
    else
      return GreenScreen();
  }

  void switchTab(AppTabs tab) {
    setState(() {
      curTab = tab;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tabs navigation")),
      body: content,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () => switchTab(AppTabs.red),
              icon: Icon(Icons.home, color: Colors.red),
            ),
            IconButton(
              onPressed: () => switchTab(AppTabs.green),
              icon: Icon(Icons.home, color: Colors.green),
            ),
            IconButton(
              onPressed: () => switchTab(AppTabs.blue),
              icon: Icon(Icons.home, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: App()));
}
