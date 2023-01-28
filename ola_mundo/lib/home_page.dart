import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  bool isDarkTheme = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [CustomSwitch()],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
            //mainAxisAlignment: MainAxisAlignment.center,
            scrollDirection: Axis.horizontal,
            children: [
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              CustomSwitch(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 500,
                    height: 1,
                    color: AppController.instance.isDarkTheme
                        ? Colors.white
                        : Colors.black,
                  ),
                ],
              )
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        {
          AppController.instance.changeTheme();
        }
      },
    );
  }
}
