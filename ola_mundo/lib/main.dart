import 'package:flutter/material.dart';

main() {
  runApp(AppWidget(
    title: 'Fluterando',
  ));
}

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Text(
        title,
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.black, fontSize: 50.0),
      ),
    ));
  }
}
