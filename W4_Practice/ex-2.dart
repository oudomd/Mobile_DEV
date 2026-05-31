import 'package:flutter/material.dart';

enum ButtonType { primary, secondary, disabled }

enum IconPosition { left, right }

class CustomButton extends StatelessWidget {

  const CustomButton({
    required this.label,
    required this.icon,
    this.iconPosition = IconPosition.left,
    this.type = ButtonType.primary,
  });

  final String label;
  final IconData icon;
  final IconPosition iconPosition;
  final ButtonType type;

  Color get color {
    switch (type) {
      case ButtonType.primary:
        return Colors.blue;
      case ButtonType.secondary:
        return Colors.green;
      case ButtonType.disabled:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    final iconWidget = Icon(icon, color: Colors.white);
    final textWidget = Text(
      label,
      style: TextStyle(color: Colors.white, fontSize: 16),
    );

    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: iconPosition == IconPosition.left
            ? [iconWidget, SizedBox(width: 12), textWidget]
            : [textWidget, SizedBox(width: 12), iconWidget],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Custom buttons')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomButton(label: 'Submit', icon: Icons.check),
            SizedBox(height: 10),
            CustomButton(label: 'Time', icon: Icons.timer, iconPosition: IconPosition.right, type: ButtonType.secondary),
            SizedBox(height: 10),
            CustomButton(label: 'Account', icon: Icons.account_tree, type: ButtonType.disabled),
          ],
        ),
      ),
    ),
  ));
}
