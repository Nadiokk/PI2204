import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Инкремент',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(title: 'Счетчик'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Значение инкремента:'),
            Text('$_counter', style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: _decrementCounter,
                  icon: const Icon(Icons.remove),
                ),
                IconButton(
                  onPressed: _incrementCounter,
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            TextButton(
              onPressed: _resetCounter,
              child: const Text('Сбросить', style: TextStyle(color: Colors.grey)),
            ),
          ],
        ),
      ),
    );
  }
}