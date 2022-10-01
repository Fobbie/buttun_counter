import 'package:counter_button/counter_button.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Counter());

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counterValue = 50;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo[400],
        appBar: AppBar(
          title: const Text("Counter"),
          backgroundColor: Colors.indigo,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "+ for plus",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              CounterButton(
                loading: false,
                onChange: (int val) {
                  setState(() {
                    _counterValue = val;
                  });
                },
                count: _counterValue,
                countColor: Colors.white,
                buttonColor: Colors.teal,
                progressColor: Colors.green,
              ),
              const Text(
                "- for minus",
                style: TextStyle(color: Colors.white, fontSize: 17),
              )
            ],
          ),
        ),
      ),
    );
  }
}
