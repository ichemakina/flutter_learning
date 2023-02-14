import 'package:flutter/material.dart';
import 'package:flutter_learning/extensions/padding_extension.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: LocationTitle(
                location: 'Severodvinsk',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    const Icon(Icons.ac_unit)
                        .padding(const EdgeInsets.symmetric(horizontal: 8)),
                    const IndicatorsWidget(
                      title: 'Temp',
                      value: '21',
                      units: 'C',
                    ),
                    const IndicatorsWidget(
                      title: 'Pressure',
                      value: '800',
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}

class IndicatorsWidget extends StatelessWidget {
  const IndicatorsWidget({
    super.key,
    required this.title,
    required this.value,
    this.units,
  });

  final String title;
  final String value;
  final String? units;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        Row(
          children: [],
        ),
        Text(value),
      ],
    );
  }
}

class LocationTitle extends StatelessWidget {
  const LocationTitle({super.key, required this.location});

  final String location;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Severodvinsk',
      style: TextStyle(
          fontSize: 24, fontWeight: FontWeight.w700, color: Colors.cyan),
    );
  }
}
