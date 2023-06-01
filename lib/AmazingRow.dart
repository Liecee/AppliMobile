import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TheAmazingRow extends StatelessWidget {
  TheAmazingRow({
    this.icon,
    this.label,
    this.onDelete,
  });
  final IconData icon;
  final String label;
  final Function(String) onDelete;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.yellow.withOpacity(0.3),
// <cherchez comment appliquer un border radius >
        borderRadius: BorderRadius.circular(10), //border radius de 16 pixelsr
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon),
          const SizedBox(width: 16),
          Expanded(child: Text(label)),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => onDelete(label),
          )
        ],
      ),
    );
  }
}
