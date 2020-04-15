import 'package:flutter/material.dart';
import 'package:named_route/page1.dart';
import 'package:named_route/page2.dart';

RouteFactory routers() {
  return (RouteSettings settings) {
    final args = settings.arguments as Map<String, dynamic>;
    switch (settings.name) {
      case Page1.route:
        return MaterialPageRoute(builder: (context) => Page1());
        break;
      case Page2.route:
        return MaterialPageRoute(builder: (context) => Page2(args['param1']));
        break;
      default:
        return MaterialPageRoute(
            builder: (context) => NotFoundPage(settings.name));
    }
  };
}

class NotFoundPage extends StatelessWidget {
  final String _named;

  const NotFoundPage(this._named);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Not found page'),
      ),
      body: Center(
        child: Text('Sorry not found page: $_named'),
      ),
    );
  }
}
