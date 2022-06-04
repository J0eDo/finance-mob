import 'package:courses_control/const.dart';
import 'package:courses_control/components/Expenses.dart';
import 'package:courses_control/components/Incomes.dart';
import 'package:courses_control/components/MainBlock.dart';
import 'package:courses_control/components/Statistic.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Course',
      theme: ThemeData(),
      home: const MyHomePage(title: 'Finance'),
      routes: {
        "expenses": ((context) => const Expenses()),
        "statistic": ((context) => const Statistic()),
        "incomes": ((context) => const Incomes()),
      },
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title, textAlign: TextAlign.center)),
        backgroundColor: primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <MainBlock>[
            MainBlock(
              title: "Statistic",
              titleColor: Colors.blue,
              picture: 'assets/images/statistics.jpg',
              page: "statistic",
            ),
            MainBlock(
              title: "Expenses",
              titleColor: Colors.red,
              picture: 'assets/images/expenses.png',
              page: "expenses",
            ),
            MainBlock(
              title: "Incomes",
              titleColor: Colors.green,
              picture: 'assets/images/incomes.png',
              page: "incomes",
            )
          ],
        ),
      ),
    );
  }
}
