import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  static const String route = '/page2';

  const Page2(this._param);

  final String _param;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Param: $_param'),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
                onPressed: () => _handlingBack(context),
                child: Text('Go back')),
          ],
        ),
      ),
    );
  }

  _handlingBack(BuildContext context) {
    Navigator.pop(context);
  }
}
