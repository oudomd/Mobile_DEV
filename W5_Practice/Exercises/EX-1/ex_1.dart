import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Custom buttons")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ChangeButton(),
            ChangeButton(),
            ChangeButton(),
            ChangeButton(),
          ],
        ),
      ),
    ),
  ),
);

class ChangeButton extends StatefulWidget {
  @override
  State<ChangeButton> createState() => _ChangeButtonState();
}

class _ChangeButtonState extends State<ChangeButton> {
  bool isSelected = false;

  String get label => isSelected ? 'Selected' : 'Not Selected';
  Color get bgColor => isSelected ? Colors.blue[500]! : Colors.blue[50]!;
  Color get textColor => isSelected ? Colors.white : Colors.black;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        width: 400,
        height: 100,
        child: ElevatedButton(
          onPressed: () => setState(() => isSelected = !isSelected),
          style: ElevatedButton.styleFrom(backgroundColor: bgColor),
          child: Center(
            child: Text(
              label,
              style: TextStyle(color: textColor, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}


