import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

// Uses shared_preferences to store theme choice (demo)
class _SettingsScreenState extends State<SettingsScreen> {
  bool darkTheme = true;

  @override
  void initState() {
    super.initState();
    _loadPrefs();
  }

  Future<void> _loadPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      darkTheme = prefs.getBool('darkTheme') ?? true;
    });
  }

  Future<void> _save(bool val) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('darkTheme', val);
    setState(() => darkTheme = val);
  }

  @override
  Widget build(BuildContext context) {
    final toggles = [
      ['Show Interface', true],
      ['Edit Mode', false],
      ['Snap', true],
      ['View', true],
      ['Shader', true],
      ['Origin', false],
      ['Subdivision', false],
      ['Properties', true],
      ['Grab', true],
      ['Toggle Selection', true],
    ];

    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          SwitchListTile(title: Text('Dark Theme'), value: darkTheme, onChanged: (v) => _save(v)),
          Divider(),
          ...toggles.map((t) => CheckboxListTile(title: Text(t[0] as String), value: (t[1] as bool), onChanged: (_) {})),
          ListTile(title: Text('Download Textures'), leading: Icon(Icons.download)),
          ListTile(title: Text('Import Objects'), leading: Icon(Icons.file_upload)),
        ],
      ),
    );
  }
}
