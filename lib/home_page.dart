// ignore_for_file: prefer_const_constructors

import 'package:ai_chat/message.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Message> _messages = [
    Message(text: "Hi", isUser: true),
    Message(text: "Hello how are you?", isUser: false),
    Message(text: "Nothing much here", isUser: true),
    Message(text: "Ok", isUser: false),
  ];

final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {

   return Scaffold(
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: _messages.length,
                  itemBuilder: (context, index) {
                    final message = _messages[index];
                    return ListTile(
                      title: Align(
                        alignment: message.isUser
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: message.isUser ? Colors.blue : Colors.grey[400],
                            borderRadius: message.isUser
                                ? BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  )
                                : BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                          ),
                          child: Text(
                            message.text,
                            style: TextStyle(
                                color: message.isUser ? Colors.white : Colors.black),
                          ),
                        ),
                      ),
                    );
                  }),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
               controller: _controller,
              ),
            )
          ],
        ));
  }
}
