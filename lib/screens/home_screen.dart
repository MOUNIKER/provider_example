import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/counter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Counter Value:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '${counter.count}',
              style:const TextStyle(fontSize: 40),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    counter.increment();
                  },
                  child:const Text('Increment'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    counter.decrement();
                  },
                  child: const Text('Decrement'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
