import 'package:flutter/material.dart';

class TexturingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Texturing'),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Object: Cube-1'),
            subtitle: Text('720 x 720 • brick.png'),
            trailing: Icon(Icons.edit),
          ),
          Expanded(
            child: Container(
              color: Color(0xFF2B2B2B),
              child: Center(child: Image.asset('assets/images/brick.png', width: 200)),
            ),
          ),
          SizedBox(height: 8),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.open_with), label: Text('Move')),
            ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.brush), label: Text('Paint')),
            ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.more_horiz), label: Text('More')),
          ]),
          SizedBox(height: 8)
        ],
      ),
    );
  }
}
