import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:prime_numbers/prime_numbers.dart';

class Statefull extends StatefulWidget {
  const Statefull({super.key});

  @override
  State<Statefull> createState() => _StatefullState();
}

class _StatefullState extends State<Statefull> {
  int angka = 0;

  void Increment() {
    setState(() {
      if (angka < 45) {
        angka += 1;
      }
    });
  }

  void prime() {
    if (angka.isPrime) {
      print('Prime');
    } else {
      print('not prime');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '20104410019 - M. Iqbal Raihan',
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => Increment(),
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text('20104410019 - M. Iqbal Raihan'),
        ),
        body: Column(children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Text(
              'Angka : $angka',
              style: TextStyle(fontSize: 30, color: redIfTrue(angka.isPrime)),
            ),
          ),
          Container(
            child: Text(
              'Apakah Angka $angka adalah bilangan primer ? ' +
                  angka.isPrime.toString(),
              style: TextStyle(fontSize: 30),
            ),
          ),
        ]),
      ),
    );
  }

  Color redIfTrue(bool value) => value ? Colors.red : Colors.black87;
}
