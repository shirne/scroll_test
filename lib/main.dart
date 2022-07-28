import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: ListView.builder(
        // physics: ClampingScrollPhysics(),
        primary: true,
        itemBuilder: (context, index) {
          if (index == 1) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              height: 80,
              alignment: Alignment.center,
              //clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                color: Colors.primaries[index % Colors.primaries.length],
              ),
              child: Text(
                '$index this block will be ok',
                style: TextStyle(color: Colors.white),
              ),
            );
          }
          if (index == 2) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              height: 100,
              alignment: Alignment.center,
              //clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                color: Colors.primaries[index % Colors.primaries.length],
                borderRadius: BorderRadius.circular(0.1),
              ),
              child: Text(
                '$index this block will be ok',
                style: TextStyle(color: Colors.white),
              ),
            );
          }
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            height: 100,
            alignment: Alignment.center,
            //clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              color: Colors.primaries[index % Colors.primaries.length],
            ),
            child: Text(
              '$index',
              style: TextStyle(color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}
