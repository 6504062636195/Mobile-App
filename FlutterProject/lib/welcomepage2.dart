import 'package:flutter/material.dart';

class WelcomePage2 extends StatefulWidget {
  const WelcomePage2({super.key});

  @override
  State<WelcomePage2> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<WelcomePage2> {
  String _output = '';
  final curSOCController = TextEditingController();
  final tarSOCController = TextEditingController();
  final chgController = TextEditingController();
  final voltController = TextEditingController();
  final wchgController = TextEditingController();
  final chgtimeController = TextEditingController();
  final batController = TextEditingController();
  final effController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Electric Car Charging App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(
                  width: 120,
                  child: Text(
                    'Current SOC%',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: curSOCController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      //hintText: 'Enter current SOC%',
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const SizedBox(
                  width: 120,
                  child: Text(
                    'Target SOC%',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: tarSOCController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      //hintText: 'Enter target SOC%',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(
                  width: 120,
                  child: Text(
                    'Chg rate A',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: chgController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      //hintText: 'Enter Charge rate A',
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const SizedBox(
                  width: 120,
                  child: Text(
                    'Volt',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: voltController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      //hintText: 'Enter Volt V = S/T',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(
                  width: 120,
                  child: Text(
                    'w chg',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: wchgController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      //hintText: 'Enter w chg (float number)',
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const SizedBox(
                  width: 120,
                  child: Text(
                    'Chg times (hrs)',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: chgtimeController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      //hintText: 'Enter Charge Time (Hours)',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(
                  width: 120,
                  child: Text(
                    'Bat kWh',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: batController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      //hintText: 'Enter Bat kWh',
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const SizedBox(
                  width: 120,
                  child: Text(
                    'Eff%',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: effController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      //hintText: 'Enter Efficiency Rate',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                final currentSOC = double.parse(curSOCController.text);
                final tarSOC = double.parse(tarSOCController.text);
                final chg = double.parse(chgController.text);
                final volt = double.parse(voltController.text);
                final wchg = double.parse(wchgController.text);
                final chgtime = double.parse(chgtimeController.text);
                final bat = double.parse(batController.text);
                final eff = double.parse(effController.text);

                final chgpower = (volt * chg) / 1000;
                final chgingtime =
                    (tarSOC - currentSOC) * bat / 100 / (chgpower * eff);

                setState(() {
                  _output =
                      'Charging Time: ${chgingtime.toStringAsFixed(2)} hours';
                });
              },
              child: const Text('Calculate'),
            ),
            Text(
              'Output: $_output',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
