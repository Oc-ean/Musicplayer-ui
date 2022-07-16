import 'package:flutter/material.dart';

class NewBox extends StatelessWidget {
  final child;
  const NewBox({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Center(
        child: child,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade300,
        boxShadow: [
          // Darker shadow on the bottom right
          BoxShadow(
            color: Colors.grey.shade500,
            blurRadius: 15,
            offset: Offset(1, 1),
          ),
          // Darker shadow on the top left
          const BoxShadow(
            color: Colors.white,
            blurRadius: 15,
            offset: Offset(-5, -5),
          ),
        ],
      ),
    );
  }
}
