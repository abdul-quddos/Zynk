import 'package:flutter/material.dart';
import '../widgets/bottom_tool_panel.dart';

class EditorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // top toolbar icons
    final topToolbar = Row(
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.save)),
        IconButton(onPressed: () => Navigator.pushNamed(context, '/add-object'), icon: Icon(Icons.add)),
        IconButton(onPressed: () {}, icon: Icon(Icons.undo)),
        IconButton(onPressed: () {}, icon: Icon(Icons.redo)),
      ],
    );

    final rightTools = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FloatingActionButton.small(onPressed: () {}, child: Icon(Icons.pan_tool), heroTag: 'h1'),
        SizedBox(height: 8),
        FloatingActionButton.small(onPressed: () {}, child: Icon(Icons.grid_on), heroTag: 'h2'),
        SizedBox(height: 8),
        FloatingActionButton.small(onPressed: () {}, child: Icon(Icons.search), heroTag: 'h3'),
        SizedBox(height: 8),
        FloatingActionButton.small(onPressed: () {}, child: Icon(Icons.more_horiz), heroTag: 'h4'),
      ],
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(color: Colors.black87, padding: EdgeInsets.symmetric(horizontal: 8), child: topToolbar),
            Expanded(
              child: Stack(
                children: [
                  // 3D placeholder grid
                  Container(
                    color: Color(0xFF2A2A2A),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset('assets/images/placeholder_cube.png', width: 160),
                          SizedBox(height: 8),
                          Text('3D Workspace (placeholder)', style: TextStyle(color: Colors.white70)),
                        ],
                      ),
                    ),
                  ),
                  Positioned(right: 14, top: 60, child: rightTools),
                ],
              ),
            ),
            // bottom tool panel
            BottomToolPanel(children: [
              toolButton(Icons.open_with, 'Transform'),
              toolButton(Icons.build, 'Bone'),
              toolButton(Icons.grid_3x3, 'Grid'),
              toolButton(Icons.circle, 'Material'),
              toolButton(Icons.panorama_fish_eye, 'Select'),
              toolButton(Icons.open_in_full, 'Move'),
              toolButton(Icons.more_horiz, 'More'),
              Container(), // blank to fill grid
            ]),
          ],
        ),
      ),
    );
  }

  Widget toolButton(IconData icon, String label) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[800], borderRadius: BorderRadius.circular(8), border: Border.all(color: Colors.white12)),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(icon, size: 28),
        SizedBox(height: 6),
        Text(label, style: TextStyle(fontSize: 12)),
      ]),
    );
  }
}
