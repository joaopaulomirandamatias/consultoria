import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NOT FOUND'),
      ),
      body: Center(
        child: Container(
          color: Colors.lightBlueAccent,
          child: const Text('Not Found'),
        ),
      ),
    );
  }
}
