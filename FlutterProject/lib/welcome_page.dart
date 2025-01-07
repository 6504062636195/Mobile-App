import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<WelcomePage> {
  String _output = '';
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App9999999999'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'hello',
            ),
            Text('${_output}'),
            const SizedBox(
              height: 14,
            ),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                hintText: 'Enter Name',
                labelText: 'Name',
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            ElevatedButton(
              onPressed: () {
                String input = _textController.text;
                setState(() {
                  _output = 'my name is $input';
                });
              },
              child: const Text('Ok Button'),
            ),
          ],
        ),
      ),
    );
  }
}
