import 'package:flutter/material.dart';
import 'package:learmond_flutter/learmond_flutter.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learmond Flutter Example',
      home: Scaffold(
        appBar: AppBar(title: const Text('Learmond Flutter Example')),
        body: const Center(child: ExampleBody()),
      ),
    );
  }
}

class ExampleBody extends StatefulWidget {
  const ExampleBody({Key? key}) : super(key: key);

  @override
  _ExampleBodyState createState() => _ExampleBodyState();
}

class _ExampleBodyState extends State<ExampleBody> {
  int _value = 0;
  final _calc = Calculator();

  void _increment() {
    setState(() {
      _value = _calc.addOne(_value);
    });
  }

  void _presentCardSheet() {
    Learmond.instance.presentCardButton(
      context: context,
      apiKey: 'api_test_XXXXXXXXXXXX',
      amount: '9.99',
      merchantArgs: {'merchantName': 'The Learmond Corporation'},
      onPay: () async {
        // Optional: call your server to create/confirm payment before paysheet.
      },
      onResult: (result) {
        // Handle PaymentResult (paysheet package). Print for demo.
        // ignore: avoid_print
        print('Payment result: $result');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Value: $_value', style: const TextStyle(fontSize: 22)),
        const SizedBox(height: 12),
        ElevatedButton(onPressed: _increment, child: const Text('Add One')),
        const SizedBox(height: 12),
        ElevatedButton(
          onPressed: _presentCardSheet,
          child: const Text('Present Card Sheet'),
        ),
      ],
    );
  }
}
