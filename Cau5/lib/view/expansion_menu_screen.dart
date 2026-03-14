import 'package:flutter/material.dart';

class MenuItem {
  final String name;
  final IconData icon;

  const MenuItem({
    required this.name,
    required this.icon,
  });
}

class Category {
  final String title;
  final List<MenuItem> items;
  bool isExpanded;

  Category({
    required this.title,
    required this.items,
    this.isExpanded = false,
  });
}

class ExpansionMenuScreen extends StatefulWidget {
  const ExpansionMenuScreen({super.key});

  @override
  State<ExpansionMenuScreen> createState() => _ExpansionMenuScreenState();
}

class _ExpansionMenuScreenState extends State<ExpansionMenuScreen> {
  final List<Category> _categories = [
    Category(
      title: 'Fruits',
      items: const [
        MenuItem(name: 'Apple', icon: Icons.apple),
        MenuItem(name: 'Banana', icon: Icons.emoji_nature),
        MenuItem(name: 'Orange', icon: Icons.circle),
      ],
    ),
    Category(
      title: 'Vegetables',
      items: const [
        MenuItem(name: 'Carrot', icon: Icons.grass),
        MenuItem(name: 'Tomato', icon: Icons.yard),
        MenuItem(name: 'Broccoli', icon: Icons.eco),
      ],
    ),
    Category(
      title: 'Drinks',
      items: const [
        MenuItem(name: 'Coffee', icon: Icons.coffee),
        MenuItem(name: 'Tea', icon: Icons.local_cafe),
        MenuItem(name: 'Juice', icon: Icons.local_drink),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Category Menu-Nguyễn Bình Minh-6451071047',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header title
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Expansion Menu',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Using ExpansionPanelList',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  _categories[index].isExpanded = !_categories[index].isExpanded;
                });
              },
              children: _categories.map<ExpansionPanel>((Category category) {
                return ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return ListTile(
                      title: Text(
                        category.title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                  },
                  body: Column(
                    children: category.items.map<Widget>((MenuItem item) {
                      return ListTile(
                        leading: Icon(
                          item.icon,
                          color: Colors.orange,
                        ),
                        title: Text(item.name),
                      );
                    }).toList(),
                  ),
                  isExpanded: category.isExpanded,
                  canTapOnHeader: true,
                );
              }).toList(),
            ),

            // Footer
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  'StatefulWidget Management',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}