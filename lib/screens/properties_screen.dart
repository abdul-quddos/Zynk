import 'package:flutter/material.dart';

class PropertiesScreen extends StatefulWidget {
  @override
  _PropertiesScreenState createState() => _PropertiesScreenState();
}

class _PropertiesScreenState extends State<PropertiesScreen> {
  double locX = 0, locY = 0, locZ = 0;
  double rotX = 0, rotY = 0, rotZ = 0;
  double scaleX = 1, scaleY = 1, scaleZ = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Properties')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            ListTile(title: Text('Object: Cube-1')),
            ExpansionTile(
              title: Text('Transform'),
              children: [
                numberRow('Location X', locX, (v) => setState(() => locX = v)),
                numberRow('Location Y', locY, (v) => setState(() => locY = v)),
                numberRow('Location Z', locZ, (v) => setState(() => locZ = v)),
                numberRow('Rotation X', rotX, (v) => setState(() => rotX = v)),
                numberRow('Scale X', scaleX, (v) => setState(() => scaleX = v)),
                // add more rows as needed...
              ],
            ),
            ExpansionTile(title: Text('Shading'), children: [ListTile(title: Text('Shading options (placeholder)'))]),
            ExpansionTile(title: Text('Visibility'), children: [SwitchListTile(value: true, onChanged: (_) {}, title: Text('Visible'))]),
            ExpansionTile(title: Text('Instancing'), children: [ListTile(title: Text('Instance controls'))]),
          ],
        ),
      ),
    );
  }

  Widget numberRow(String label, double value, ValueChanged<double> onChanged) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Row(children: [
        Expanded(child: Text(label)),
        SizedBox(width: 12),
        Container(width: 90, child: Text(value.toStringAsFixed(2), textAlign: TextAlign.right)),
        SizedBox(width: 8),
        IconButton(icon: Icon(Icons.remove), onPressed: () => onChanged(value - 0.1)),
        IconButton(icon: Icon(Icons.add), onPressed: () => onChanged(value + 0.1)),
      ]),
    );
  }
}
