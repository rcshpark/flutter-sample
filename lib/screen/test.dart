import 'package:flutter/material.dart';
import 'package:example/main.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('test'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'test',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
