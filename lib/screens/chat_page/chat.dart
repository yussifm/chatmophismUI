// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:chatmophism/Data/Contact.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  _ChatViewState createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  List contacts = allContacts;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                      color: Colors.amber[800],
                      onPressed: () {},
                      icon: FaIcon(
                        FontAwesomeIcons.angleLeft,
                        size: 20.0,
                      )),
                  Text(
                    "Calls",
                    style: TextStyle(
                        color: Colors.amber[800], fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Text(
                "Chats",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 20.0),
              ),
              IconButton(
                  onPressed: () {},
                  icon: FaIcon(
                    FontAwesomeIcons.ellipsisH,
                    color: Colors.amber[800],
                    size: 20.0,
                  ))
            ],
          ),
          Divider(
            thickness: 1.5,
          ),
          Expanded(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade600,
                        offset: Offset(3.0, 4.0),
                        blurRadius: 5.0,
                        spreadRadius: 0.5,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 5.0,
                        spreadRadius: 0.5,
                      ),
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.grey.shade300,
                        Colors.grey.shade200,
                        Colors.grey.shade100,
                        Colors.grey.shade300,
                        
                      ],
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.mic),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: contacts.length,
                  itemBuilder: (context, index) {
                    String name = contacts[index]['name'];
                    String message = contacts[index]['message'];
                    String timeM = contacts[index]['time'];
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Container(
                            width: 70.0,
                            height: 70.0,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade600,
                                    offset: Offset(4.0, 7.0),
                                    blurRadius: 10.0,
                                    spreadRadius: 0.5,
                                  ),
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-4.0, -4.0),
                                    blurRadius: 15.0,
                                    spreadRadius: 1.0,
                                  )
                                ]),
                            child: Center(child: Text(name[0].toUpperCase())),
                          )),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  child: ListTile(
                                    title: Text(name),
                                    subtitle: Text(message),
                                    trailing: Text(timeM),
                                  ),
                                ),
                                Expanded(
                                  child: Divider(
                                    thickness: 1.4,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          )),
        ],
      ),
    ));
  }
}





// Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//             onPressed: () {},
//             icon: FaIcon(FontAwesomeIcons.angleLeft),
//         ),
//         centerTitle: true,
//         title: Text('Chats'),
//         actions: [
//           IconButton(
//             icon: FaIcon(FontAwesomeIcons.ellipsisH),
//             onPressed: () {},
//           ),
//         ],
//         elevation: 1.0,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(top: 8.0, left: 5.0, right: 5.0),
//         child: Column(
//           children: [
//             Expanded(
//               child: TextField(
//                 decoration: InputDecoration(
//                   hintText: 'Search',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30.0),
//                   ),
//                   prefixIcon: Icon(Icons.search),
//                   suffixIcon: Icon(Icons.mic),
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 6,
//               child: ListView.builder(
//                 itemCount: 20,
//                 itemBuilder: (context, index) {
//                   return Column(
//                     children: [
//                       ListTile(
//                         leading: CircleAvatar(
//                           backgroundColor: Colors.white,
//                           child: Text('A'),
//                         ),
//                         title: Text('User name'),
//                         subtitle: Text('Last message'),
//                         trailing: Text('12:00'),
//                       ),
//                       Divider(
//                         thickness: 2.0,
//                       ),
//                     ],
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );

