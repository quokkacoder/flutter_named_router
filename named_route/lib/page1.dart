import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Center(
        child: RaisedButton(
            onPressed: () => _handlingPush(context),
            child: Text('Launch screen')),
      ),
    );
  }

  _handlingPush(BuildContext context) {
    Navigator.pushNamed(context, '/page2',
        arguments: {'param1': 'from page 1'});
  }
}
