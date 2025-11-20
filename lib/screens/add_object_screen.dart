import 'package:flutter/material.dart';

class AddObjectScreen extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {'label': 'Select from Device', 'icon': Icons.folder_open},
    {'label': 'Sphere', 'icon': Icons.circle},
    {'label': 'Cube', 'icon': Icons.crop_square},
    {'label': 'Plane', 'icon': Icons.stop},
    {'label': 'Circle', 'icon': Icons.radio_button_unchecked},
    {'label': 'UV Sphere', 'icon': Icons.bubble_chart},
    {'label': 'Ico Sphere', 'icon': Icons.all_inclusive},
    {'label': 'Cylinder', 'icon': Icons.crop_7_5},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Object')),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.6,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: items.map((it) => objectTile(context, it)).toList(),
        ),
      ),
    );
  }

  Widget objectTile(BuildContext ctx, Map<String, dynamic> it) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[850], padding: EdgeInsets.all(8)),
      onPressed: () => Navigator.pop(ctx),
      child: Row(children: [Icon(it['icon']), SizedBox(width: 12), Expanded(child: Text(it['label']))]),
    );
  }
}
