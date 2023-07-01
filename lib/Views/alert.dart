import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlertPage'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.abc_sharp),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
