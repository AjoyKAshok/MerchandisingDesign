import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:rmsdesign/commonscreens/loginscreen.dart';
import 'package:rmsdesign/commonscreens/splashscreen.dart';
import 'package:rmsdesign/merchandiser/merchandiserjourneyplan.dart';
import 'package:rmsdesign/merchandiser/merchdashboard.dart';
import 'package:rmsdesign/merchandiser/outletdetails.dart';
import 'package:rmsdesign/merchandiser/weeksjourneyplan.dart';
import 'package:rmsdesign/merchandiser/yettovisitjourneyplan.dart';
import 'package:rmsdesign/utils/merchandiserdrawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
          LoginPage.routeName: (ctx) => LoginPage(),
          MerchandiserDashborard.routeName: (ctx) => MerchandiserDashborard(),
          MerchandiserJourneyPlan.routeName: (ctx) => MerchandiserJourneyPlan(),
          YetToVisitStores.routeName: (ctx) => YetToVisitStores(),
          WeeklyJourneyPlan.routeName: (ctx) => WeeklyJourneyPlan(),
          OutletDetails.routeName: (ctx) => OutletDetails(),
              
        },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int index = 0;
  // bool MTBSelected = false;
  // bool TodaySelected = true;
  @override
  Widget build(BuildContext context) {
    // final items = <Widget>[
    //   const Icon(Icons.home),
    //   const Icon(Icons.notifications),
    // ];
    return Scaffold(
      
      body: SplashScreen(),
    );
      }
}
