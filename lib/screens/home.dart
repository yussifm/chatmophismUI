// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unused_element

import 'package:chatmophism/screens/calls_page/Calls.dart';
import 'package:chatmophism/screens/chat_page/chat.dart';
import 'package:chatmophism/screens/contact_page/contact.dart';
import 'package:chatmophism/screens/settings/setting.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>  {
  int _selectedIndex = 0;

  static const List<Widget> _bottnwidget = [
    ContactView(),
    CallsView(),
    ChatView(),
    SettingView()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bottnwidget.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        backgroundColor: Colors.grey[400],
        elevation: 10.5,
        iconSize: 20.0,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.userCircle),
            label: "Contacts",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.phoneAlt),
            label: "Calls",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.comments),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.cog),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
