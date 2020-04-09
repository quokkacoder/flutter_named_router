import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final String _param;

  const Page2(this._param);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: RaisedButton(
            onPressed: ()=> _handlingBack(context),
            child: Text('Go back')
        ),
      ),
    );
  }

  _handlingBack(BuildContext context) {
    Navigator.pop(context);
  }
}
