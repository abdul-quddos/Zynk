import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String label;
  final IconData? icon;
  final VoidCallback onTap;
  final Color? color;

  const RoundedButton({
    Key? key,
    required this.label,
    required this.onTap,
    this.icon,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        margin: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: color ?? Colors.grey[800],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white24),
        ),
        child: Row(
          children: [
            if (icon != null) Icon(icon, color: Colors.white),
            if (icon != null) SizedBox(width: 12),
            Expanded(child: Text(label, style: TextStyle(fontSize: 18))),
            Icon(Icons.arrow_forward_ios, size: 18, color: Colors.white54),
          ],
        ),
      ),
    );
  }
}
