import 'package:flutter/material.dart';

class LeaveStatus extends StatefulWidget {
  static const routeName = '/LeaveStatus';
  LeaveStatus({Key? key}) : super(key: key);

  @override
  State<LeaveStatus> createState() => _LeaveStatusState();
}

class _LeaveStatusState extends State<LeaveStatus> {
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
          'Leave Status',
          style: TextStyle(
            color: Color(0XFF909090),
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}