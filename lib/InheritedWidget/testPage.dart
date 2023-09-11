import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_awesome/InheritedWidget/inheritedWidget.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return CountWidget(
      _count,
      Scaffold(
        body: Center(
          child: Column(
            children: [
              Text('$_count', style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomWidget extends StatelessWidget {
  // final int count;
  // final Function callBack;
  @override
  Widget build(BuildContext context) {
    CountWidget? countWidget = CountWidget.of(context);
    return Row(
      children: <Widget>[
        TextButton(
          onPressed: () {},
          child: Icon(Icons.remove),
        ),
        Text('${countWidget?.count}'),
        TextButton(
          onPressed: () {},
          child: Icon(Icons.remove),
        ),
      ],
    );
  }
}
