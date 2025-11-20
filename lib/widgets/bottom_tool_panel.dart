import 'package:flutter/material.dart';

class BottomToolPanel extends StatelessWidget {
  final List<Widget> children;
  const BottomToolPanel({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      padding: EdgeInsets.all(10),
      child: GridView.count(
        crossAxisCount: 4,
        shrinkWrap: true,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        physics: NeverScrollableScrollPhysics(),
        children: children,
      ),
    );
  }
}
