import 'package:flutter/material.dart';
import 'package:newflutterproject/welcomepage2.dart';

class ChargingDetailsPage extends StatelessWidget {
  

  const ChargingDetailsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Charging Details'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Charging in progress...',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(),
            SizedBox(height: 20),
            Text('Calculating..................'),
          ],
        ),
      ),
    );
  }
}
