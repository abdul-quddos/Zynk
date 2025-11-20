import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  final List<Map<String,String>> saves = [
    {'name':'cube.obj','thumb':'assets/images/placeholder_cube.png'},
    {'name':'mushroom.obj','thumb':'assets/images/placeholder_cube.png'},
  ];
  final List<Map<String,String>> renders = [
    {'name':'sphere.png','thumb':'assets/images/sphere.png'},
    {'name':'brick.png','thumb':'assets/images/brick.png'},
    {'name':'house.png','thumb':'assets/images/gallery_house.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gallery')),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          Text('Saves', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          ...saves.map((s) => Card(child: ListTile(leading: Image.asset(s['thumb']!), title: Text(s['name']!)))),
          SizedBox(height: 12),
          Text('Renders', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          ...renders.map((r) => Card(child: ListTile(leading: Image.asset(r['thumb']!), title: Text(r['name']!)))),
        ],
      ),
    );
  }
}
