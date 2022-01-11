// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ContactView extends StatefulWidget {
  const ContactView({ Key? key }) : super(key: key);

  @override
  _ContactViewState createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Contact'),
      
    );
  }
}