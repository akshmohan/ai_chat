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
    Message(text: "Ok", isUser: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: _messages.length,
            itemBuilder: (context, index) {
              final message = _messages[index];
              return ListTile(
                title: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    message.text,
                    style: TextStyle(color: message.isUser ? Colors.white: Colors.black),
                  ),
                ),
              );
            }));
  }
}
