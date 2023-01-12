import 'package:flutter/material.dart';

import '../utils/background.dart';

class OutletDetails extends StatefulWidget {
  static const routeName = '/OutletDetails';
  OutletDetails({Key? key}) : super(key: key);

  @override
  State<OutletDetails> createState() => _OutletDetailsState();
}

class _OutletDetailsState extends State<OutletDetails> {
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
          'Outlet Details',
          style: TextStyle(
            color: Color(0XFF909090),
          ),
          textAlign: TextAlign.left,
        ),
      ),
       body: Stack(
        children: [
          BackGround(),
        ]
       ),
    );
  }
}
