import 'package:flutter/material.dart';

class HeaderDrawer extends StatefulWidget {
  HeaderDrawer({Key? key}) : super(key: key);

  @override
  State<HeaderDrawer> createState() => _HeaderDrawerState();
}

class _HeaderDrawerState extends State<HeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //  color: Colors.green[700],
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
            colors: [Color(0xFFF88200), Color(0xFFE43700)]),
      ),
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
              border: Border.all(
                width: 3,
                color: Colors.white,
              ),
              shape: BoxShape.circle,
              image: const DecorationImage(
                image: AssetImage('images/photograph.png'),
              ),
            ),
          ),
          const Text(
            "Menu",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "Emp Id 7325",
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
