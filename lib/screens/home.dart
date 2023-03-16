import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mjeet07/screens/prdgp.dart';
import 'package:mjeet07/screens/prdid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget exitBtn() {
    return IconButton(
      onPressed: () {
        closeApp();
      },
      icon: Icon(Icons.exit_to_app_rounded),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Menu'),
        actions: [exitBtn()],
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [Colors.white30, Colors.blue],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                showLogo(),
                SizedBox(height: 15.0),
                menuPrdID(),
                SizedBox(height: 10.0),
                menuPrdGP(),
                // SizedBox(height: 10.0),
                // menuExit(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  showLogo() {
    return Container(
      width: 120.0,
      height: 120.0,
      child: Image.asset('images/logo.png'),
    );
  }

  menuPrdID() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.amberAccent.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: () {
        MaterialPageRoute route = MaterialPageRoute(
          builder: (context) => prdID(),
        );
        Navigator.push(context, route);
      },
      child: Container(
        width: 180.0,
        height: 40.0,
        child: Center(
          child: Text(
            'Product ID',
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.deepPurpleAccent.shade400,
            ),
          ),
        ),
      ),
    );
  }

  menuPrdGP() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.amberAccent.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: () {
        MaterialPageRoute route = MaterialPageRoute(
          builder: (context) => prdGP(),
        );
        Navigator.push(context, route);
      },
      child: Container(
        width: 180.0,
        height: 40.0,
        child: Center(
          child: Text(
            'Product Group',
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.deepPurpleAccent.shade400,
            ),
          ),
        ),
      ),
    );
  }

  menuExit() {
    return ElevatedButton.icon(
      onPressed: () {
        closeApp();
      },
      icon: Icon(
        Icons.exit_to_app_rounded,
        size: 36.0,
        color: Colors.red.shade900,
      ),
      label: Container(
        width: 100.0,
        height: 50.0,
        child: Center(
          child: Text(
            'Exit',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.redAccent.shade700,
            ),
          ),
        ),
      ),
    );
  }

  void closeApp() {
    exit(0);
  }
}
