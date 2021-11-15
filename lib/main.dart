import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'SnackBar example'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  final SnackBar _snack = const SnackBar(
    content: Text("Snackbar in action"),
    backgroundColor: Colors.blue,
    duration: Duration(seconds: 5),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Builder(
          builder: (BuildContext context) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                      child: const Text('Launch'),
                      textColor: Colors.white,
                      color: Colors.blue,
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(_snack);
                      }
                  ),
                ],
              ),
            );
          }
      ),
    );
  }
}