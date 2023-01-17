import 'package:flutter/material.dart';

class HQCommunication extends StatefulWidget {
  static const routeName = '/HQCommunication';
  HQCommunication({Key? key}) : super(key: key);

  @override
  State<HQCommunication> createState() => _HQCommunicationState();
}

class _HQCommunicationState extends State<HQCommunication> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        toolbarHeight: 50,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
          color: Color(0XFF909090),
        ),
        title: const Text(
          'HQ Communication',
          style: TextStyle(
            color: Color(0XFF909090),
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}