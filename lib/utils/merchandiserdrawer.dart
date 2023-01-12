import 'package:flutter/material.dart';

class MerchandiserDrawer extends StatefulWidget {
  MerchandiserDrawer({Key? key}) : super(key: key);

  @override
  State<MerchandiserDrawer> createState() => _MerchandiserDrawerState();
}

class _MerchandiserDrawerState extends State<MerchandiserDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
       child: Column(
        children: [
          AppBar(
            title: Text('Menu'),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home Page'),
            onTap: () {
              // Navigator.of(context).pushReplacementNamed('/');
              // Navigator.of(context)
              //     .pushReplacementNamed(WelcomeScreen.routeName);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person_add_alt_1_sharp),
            title: Text('My Profile'),
            onTap: () {
              // Navigator.of(context).pushNamed(Profiler.routeName);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.people_alt_sharp),
            title: Text('Refer Your Friends'),
            onTap: () {
              // Navigator.of(context).pushNamed(ReferencePage.routeName);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.feedback_sharp),
            title: Text('Share Your Feddback'),
            onTap: () {
              // Navigator.of(context).pushReplacementNamed(Testimonial.routeName);
            },
          ),
        ]),
    );
  }
}