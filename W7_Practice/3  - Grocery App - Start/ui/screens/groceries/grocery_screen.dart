import 'package:flutter/material.dart';
import '../../../data/mock_grocery_data.dart';
import '../../../models/grocery.dart';
import 'grocery_tile.dart';
import 'grocery_form.dart';

class GroceryScreen extends StatefulWidget {
  const GroceryScreen({super.key});

  @override
  State<GroceryScreen> createState() => _GroceryScreenState();
}

class _GroceryScreenState extends State<GroceryScreen> {
  List<GroceryItem> groceries = List.from(allGroceryItems);

  void onCreate() {
    
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (ctx) {
        return GroceryForm(
          onAddItem: (newItem) {
            setState(() {
              groceries.add(newItem);
            });
          },
        );
      },
    );
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Groceries'),
        actions: [IconButton(onPressed: onCreate, icon: Icon(Icons.add))],
      ),
      body: allGroceryItems.isEmpty
          ? Center(child: Text('No items added yet.'))
          : ListView.builder(
              itemCount: allGroceryItems.length,
              itemBuilder: (ctx, index) {
                return GroceryTile(grocery: allGroceryItems[index]);
              },
            ),
    );
  }

  
}
