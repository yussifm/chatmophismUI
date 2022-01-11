// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CallsView extends StatefulWidget {
  const CallsView({Key? key}) : super(key: key);

  @override
  _CallsViewState createState() => _CallsViewState();
}

class _CallsViewState extends State<CallsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text("Calls"),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Calls'),
      ),
    );
  }
}
