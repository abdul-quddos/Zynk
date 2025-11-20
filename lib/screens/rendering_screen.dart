import 'package:flutter/material.dart';

class RenderingScreen extends StatefulWidget {
  @override
  _RenderingScreenState createState() => _RenderingScreenState();
}

class _RenderingScreenState extends State<RenderingScreen> {
  String format = 'PNG';
  String resolution = '720';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Render')),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(children: [
          DropdownButtonFormField<String>(
            value: format,
            items: ['PNG','JPG','WEBP'].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
            onChanged: (v) => setState(() => format = v!),
            decoration: InputDecoration(labelText: 'Render As'),
          ),
          DropdownButtonFormField<String>(
            value: resolution,
            items: ['720','1080','1920'].map((e) => DropdownMenuItem(value: e, child: Text('${e} px'))).toList(),
            onChanged: (v) => setState(() => resolution = v!),
            decoration: InputDecoration(labelText: 'Resolution'),
          ),
          ListTile(title: Text('Estimated size: 72KB • Estimated time: 2 sec')),
          SizedBox(height: 12),
          ElevatedButton.icon(onPressed: () => _showRenderDialog(context), icon: Icon(Icons.photo_camera), label: Text('Render')),
        ]),
      ),
    );
  }

  void _showRenderDialog(BuildContext ctx) {
    showDialog(context: ctx, builder: (c) {
      return AlertDialog(
        title: Text('Rendering...'),
        content: Text('Rendered as $format @ ${resolution}px\nSaved to Pictures/Renders (placeholder)'),
        actions: [TextButton(onPressed: () => Navigator.pop(c), child: Text('OK'))],
      );
    });
  }
}
