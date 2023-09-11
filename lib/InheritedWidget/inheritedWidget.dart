import 'package:flutter/cupertino.dart';

class CountWidget extends InheritedWidget {
  final int count;

  CountWidget(this.count, Widget child) : super(child: child);

  static CountWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CountWidget>();
  }

  @override
  bool updateShouldNotify(CountWidget oldWidget) {
    return count != oldWidget.count;
  }
}
