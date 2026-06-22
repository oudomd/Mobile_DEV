// ---------------------------------------------
// Create a new statefull widget : GroceryForm
// ---------------------------------------------

// The form shall be composed of 2 text fields:
// -	Name of the grocery item
//-	Quantity (number only)

// ⚠️  For now we don’t select the grocery type, we assume it’s always food

// The form shall be composed of 2 buttons:
//-	Cancel button
// -	Add item button

import 'package:flutter/material.dart';
import '../../../models/grocery.dart';

class GroceryForm extends StatefulWidget {
  const GroceryForm({super.key, required this.onAddItem});

  final void Function(GroceryItem) onAddItem;

  @override
  State<GroceryForm> createState() => _GroceryFormState();
}

class _GroceryFormState extends State<GroceryForm> {
  final nameCont = TextEditingController();
  final quantityCont = TextEditingController();

  void submit() {
    final name = nameCont.text.trim();
    final quantity = int.tryParse(quantityCont.text);

    if (name.isEmpty || quantity == null) {
      return;
    }

    widget.onAddItem(
      GroceryItem(
        id: DateTime.now().toString(),
        name: name,
        quantity: quantity,
        category: GroceryCategory.other,
      ),
    );

    Navigator.pop(context,55   );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Add Grocery', style: TextStyle(fontSize: 20)),
          SizedBox(height: 18),
          TextField(
            controller: nameCont,
            decoration: InputDecoration(labelText: 'Name'),
          ),
          SizedBox(height: 15),
          TextField(
            controller: quantityCont,
            decoration: InputDecoration(labelText: 'Quantity'),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancle'),
              ),
              ElevatedButton(onPressed: submit, child: Text('Add Item')),
            ],
          ),
        ],
      ),
    );
  }
}
