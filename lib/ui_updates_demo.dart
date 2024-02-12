import 'package:flutter/material.dart';
import 'package:todo_app/demo_buttons.dart';

class UIUpdatesDemo extends StatefulWidget {
  const UIUpdatesDemo({super.key});

  @override
  State<UIUpdatesDemo> createState() => _UIUpdatesDemoState();
}

class _UIUpdatesDemoState extends State<UIUpdatesDemo> {


  @override
  Widget build(BuildContext context) {
    print('UIUpadatesDemo BUILD called');
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person),
            Text('Every Flutter developer should have a basic understanding of flutter\'s internals!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text('Do you understand how Flutter updates UIs?'),
            SizedBox(height: 24),
            Expanded(child: DemoButtons())

          ],
        ),
      ),
    );
  }
}
