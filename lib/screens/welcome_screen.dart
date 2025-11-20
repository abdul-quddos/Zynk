import 'package:flutter/material.dart';
import '../widgets/rounded_button.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(child: Icon(Icons.person)),
              ),
              SizedBox(height: 20),
              Text('WELCOME', style: TextStyle(fontSize: 46, color: Colors.purpleAccent, fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('To', style: TextStyle(fontSize: 28, color: Colors.pinkAccent)),
                  SizedBox(width: 8),
                  Text('MORTAR', style: TextStyle(fontSize: 28, color: Colors.greenAccent, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 30),
              RoundedButton(label: 'New Project', icon: Icons.add_box, onTap: () => Navigator.pushNamed(context, '/editor'), color: Colors.grey[700]),
              RoundedButton(label: 'Open From Device', icon: Icons.folder_open, onTap: () => Navigator.pushNamed(context, '/gallery')),
              RoundedButton(label: 'Browse', icon: Icons.public, onTap: () => Navigator.pushNamed(context, '/gallery')),
              RoundedButton(label: 'Settings', icon: Icons.settings, onTap: () => Navigator.pushNamed(context, '/settings')),
              RoundedButton(label: 'Tutorials', icon: Icons.help_outline, onTap: () {}),
              RoundedButton(label: 'Gallery', icon: Icons.photo, onTap: () => Navigator.pushNamed(context, '/gallery')),
              Spacer(),
              LinearProgressIndicator(value: 0.2, backgroundColor: Colors.white12, valueColor: AlwaysStoppedAnimation(Colors.white54)),
            ],
          ),
        ),
      ),
    );
  }
}
