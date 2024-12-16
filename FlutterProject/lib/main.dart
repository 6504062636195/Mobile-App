import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.yellowAccent),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellowAccent),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Nominee MC Donald'),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              debugPrint('leading icon pressed');
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                debugPrint('leading icon pressed');
              },
            ),
            IconButton(
              icon: const Icon(Icons.info),
              onPressed: () {
                debugPrint('leading icon pressed');
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Image.network(
                  'https://logos-world.net/wp-content/uploads/2020/04/McDonalds-Logo.png'),
              const Text(
                ('Thank you for your service'),
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Text(
                ('This is you bill'),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 30,
              ),
              /*
              Image.asset(
                'McDonalds-Logo.png',
                width: 120,
              ),
              
              IconButton(
                icon: const Icon(Icons.favorite_border),
                onPressed: () {
                  debugPrint('leading icon pressed');
                },
              ),
              */
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.calendar_month,
                    size: 30,
                  ),
                  Text(
                    'Date',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Text(
                    '11 Dec 2024',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.food_bank,
                    size: 30,
                  ),
                  Text(
                    'Branch',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                  Text(
                    'Namek',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.fastfood_sharp,
                    size: 30,
                  ),
                  Text(
                    'Menu',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Text(
                    'Big size french fries',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.money,
                    size: 30,
                  ),
                  Text(
                    'Total',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                  Text(
                    '10 Dollars',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.money,
                    size: 30,
                  ),
                  Text(
                    'Services Charge',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    '2 Dollars',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.money,
                    size: 30,
                  ),
                  Text(
                    'Total Price',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Text(
                    '12 Dollars',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Thank you for services',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, child: Icon(Icons.shopping_cart)),
      ),
    );
  }
}

/*
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Colors.lightBlueAccent)),
      home: Scaffold(
        appBar: AppBar(
          title: Text('CS app'),
        ),
        body: Text(' Hello, World!'),
      ),
    ),
  );
}
*/

/*
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Welcome to my mobile application'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              // 'You have pushed the button this many times:',
              'Countdown Minus 1',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

ElevatedButton(
                    onPressed: () {
                      debugPrint(
                          'Never gonna give you up, Never gonna let you down');
                    },
                    child: const Text(
                      'Do not click',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
*/