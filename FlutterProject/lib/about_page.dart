import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Electric Car Charging App'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(
                  width: 120,
                  child: Text(
                    'Current SOC%',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      //hintText: 'Enter current SOC%',
                    ),
                  ),
                ),
                SizedBox(width: 10),
                SizedBox(
                  width: 120,
                  child: Text(
                    'Target SOC%',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      //hintText: 'Enter target SOC%',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(
                  width: 120,
                  child: Text(
                    'Chg rate A',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      //hintText: 'Enter Charge rate A',
                    ),
                  ),
                ),
                SizedBox(width: 10),
                SizedBox(
                  width: 120,
                  child: Text(
                    'Volt',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      //hintText: 'Enter Volt V = S/T',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(
                  width: 120,
                  child: Text(
                    'w chg',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      //hintText: 'Enter w chg (float number)',
                    ),
                  ),
                ),
                SizedBox(width: 10),
                SizedBox(
                  width: 120,
                  child: Text(
                    'Chg times (hrs)',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      //hintText: 'Enter Charge Time (Hours)',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(
                  width: 120,
                  child: Text(
                    'Bat kWh',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      //hintText: 'Enter Bat kWh',
                    ),
                  ),
                ),
                SizedBox(width: 10),
                SizedBox(
                  width: 120,
                  child: Text(
                    'Eff%',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      //hintText: 'Enter Efficiency Rate',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            /*
             ElevatedButton(
              onPressed: () {
                String input = _textController.text;
                setState(() {
                  _output = 'my name is $input';
                });
              },
              child: const Text('Calculate'),
            ),
            */
          ],
        ),
      ),
    );
  }
}
