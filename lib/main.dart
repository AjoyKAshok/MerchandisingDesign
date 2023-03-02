import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:rmsdesign/commonscreens/chatpage.dart';
import 'package:rmsdesign/commonscreens/hqcommunication.dart';
import 'package:rmsdesign/commonscreens/loginscreen.dart';
import 'package:rmsdesign/commonscreens/notificationpage.dart';
import 'package:rmsdesign/commonscreens/splashscreen.dart';
import 'package:rmsdesign/merchandiser/leavestatus.dart';
import 'package:rmsdesign/merchandiser/merchandiserjourneyplan.dart';
import 'package:rmsdesign/merchandiser/merchdashboard.dart';
import 'package:rmsdesign/merchandiser/outletdetails.dart';
import 'package:rmsdesign/merchandiser/profilescreen.dart';
import 'package:rmsdesign/merchandiser/timesheetdetail.dart';
import 'package:rmsdesign/merchandiser/weeksjourneyplan.dart';
import 'package:rmsdesign/merchandiser/yettovisitjourneyplan.dart';
import 'package:rmsdesign/utils/chatscreen.dart';
import 'package:rmsdesign/utils/constants.dart';
import 'package:rmsdesign/utils/merchandiserdrawer.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'utils/network/NetworkStatusService.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  // /*opening the app without login screen.
  // trying to check if any email or password has been stored in the local storage.*/
  // SharedPreferences prefs = await SharedPreferences.getInstance();
  // var email = prefs.getString('useremail');
  // var password = prefs.getString('userpassword');
  // // remembereddata.email = email;
  // // remembereddata.password = password;
  // print("Remember me : $email, $password");

  // //if email and password are stored, then it will go through this loop
  // if (email != null && password != null) {
  //   fromloginscreen = true;

  //   /*make sure we receive token and empid before calling other api's
  //   so await for login api.*/
  //   int userroleid = await loginapi();

  //   /*login api will return a role id.
  //   based on the role id we will navigate to that role id dashboard*/
  //   currentuser.roleid = userroleid;
  //   print("User Role ID-- $userroleid");
  //   if (userroleid == 6) {
  //     print("Merchandiser");
  //     /*BackgroundFetch.configure(config, onFetch)
      
  //     print("background fetch detail's : ${prefs.getString('fetch_events')}");*/
  //     // first we are trying to get any unsynced data that was in the local storage.
  //     message = prefs.getStringList('addtoservermessage');
  //     requireurlstosync = prefs.getStringList('addtoserverurl');
  //     requirebodytosync = prefs.getStringList('addtoserverbody');

      
  //     currentlysyncing = false;
  //     print("going to get reference");
  //     await syncingreferencedata();
  //     print("going to send");
  //     if (onlinemode.value) {
  //       print("come to send");
  //       print(requireurlstosync);
  //       print(requirebodytosync);
  //       syncingsenddata();
  //     }

  //     /*  //once app is up and running for every 20 minutes we are trying to get reference data.
      
  //     Timer.periodic(period, (Timer t) => syncingsenddata());*/

  //     var currentpage = prefs.getString('pageiddata');
  //     print("current page : $currentpage");
  //     if (currentpage == "2") {
  //       currentoutletid = int.parse(prefs.getString('outletiddata'));
  //       currenttimesheetid = prefs.getString('timesheetiddata');
  //       currentoutletindex =
  //           int.parse(prefs.getString('currentoutletindexdata'));
  //       company.text = prefs.getString("companydata");
  //       category.text = prefs.getString("categorydata");
  //       itemname.text = prefs.getString("itemdata");
  //       promotiontype.text = prefs.getString("promotypedata");
  //       promodscrptn.text = prefs.getString("promodescdata");
  //       mrp.text = prefs.getString("regpricedata");
  //       sellingprice.text = prefs.getString("sellpricedata");

       

  //       print("getString == ${company.text}");
  //       // print("img == $savedcopmimg");
  //     }
  //     if (currentpage == "1") {
  //       await getLocation();
  //       await callfrequently();
  //       fromloginscreen = false;
  //       runApp(
  //           MultiProvider(
  //             providers: [
  //               ChangeNotifierProvider<NetworkStatusService>(create: (_) => NetworkStatusService())
  //             ],
  //             child:  MaterialApp(
                 
  //                 key: navigatorKey,
  //                 title: AppConstants.title,
  //                 debugShowCheckedModeBanner: false,
  //                 theme: ThemeData(
  //                   fontFamily: 'Poppins',
  //                   primaryColor: Colors.white,
  //                   accentColor: Colors.orange,
  //                 ),
  //                 home: JourneyPlanPage()),
  //           )

  //       );
  //     } else if (currentpage == "2") {
  //       await getLocation();
  //       await outletwhencheckin();
  //       getTaskList();
  //       getVisibility();
  //       getPlanogram();
  //       getPromotionDetails();
  //       // Addedstockdataformerch();
  //       await getNBLdetails();
  //       getShareofshelf();
  //       NBLdetailsoffline();

  //       print("KPI current page timesheet id");
  //       print(currenttimesheetid);
  //       fromloginscreen = false;
  //       runApp(
  //         MultiProvider(
  //           providers: [
  //             ChangeNotifierProvider<NetworkStatusService>(create: (_) => NetworkStatusService())
  //           ],
  //           child:MaterialApp(
             
  //             key: navigatorKey,
  //             title: AppConstants.title,
  //             debugShowCheckedModeBanner: false,
  //             theme: ThemeData(
  //               fontFamily: 'Poppins',
  //               primaryColor: Colors.white,
  //               accentColor: Colors.orange,
  //             ),
  //             home: CustomerActivities(),
  //           ),
  //         )

  //       );
  //     } else {
  //       runApp(
  //           MultiProvider(
  //             providers: [
  //               ChangeNotifierProvider<NetworkStatusService>(create: (_) => NetworkStatusService())
  //             ],
  //             child:  MaterialApp(
                
  //               key: navigatorKey,
  //                 title: AppConstants.title,
  //                 debugShowCheckedModeBanner: false,
  //                 theme: ThemeData(
  //                   fontFamily: 'Poppins',
  //                   primaryColor: Colors.white,
  //                   accentColor: Colors.orange,
  //                 ),
  //                 home: MerchandiserDashborard()),
  //           )

  //       );
  //     }
  //   }
  // else {
  //     runApp(
  //     MultiProvider(
  //     providers: [
  //     ChangeNotifierProvider<NetworkStatusService>(create: (_) => NetworkStatusService())
  // ],
  // child: MaterialApp(
  //     // builder:  (BuildContext context, Widget child) {
  //     //   return MediaQuery(
  //     //     data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0, ), //set desired text scale factor here
  //     //     child: child,
  //     //   );
  //     // },
  // title: AppConstants.title,
  // debugShowCheckedModeBanner: false,
  // theme: ThemeData(
  // fontFamily: 'Poppins',
  // primaryColor: Colors.white,
  // accentColor: orange,
  // ),
  // home: LoginPage()),
  // )

  //     );
  //   }
  // } else {
  //   //if no email or password found it will open login page.
  //   runApp(
  //   MultiProvider(
  //   providers: [
  //   ChangeNotifierProvider<NetworkStatusService>(create: (_) => NetworkStatusService())
  // ],
  // child: MaterialApp(
  //     // builder:  (BuildContext context, Widget child) {
  //     //   return MediaQuery(
  //     //     data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0, ), //set desired text scale factor here
  //     //     child: child,
  //     //   );
  //     // },
  // title: AppConstants.title,
  // debugShowCheckedModeBanner: false,
  // theme: ThemeData(
  // fontFamily: 'Poppins',
  // primaryColor: Colors.white,
  // accentColor: orange,
  // ),
  // home: LoginPage()),
  // )
  //   );
  // }

    runApp(const MyApp());
  // }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RMS',
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
        LeaveStatus.routeName: (ctx) => LeaveStatus(),
        HQCommunication.routeName: (ctx) => HQCommunication(),
        TimeSheetDetail.routeName: (ctx) => TimeSheetDetail(),
        ProfilePage.routeName: (ctx) => ProfilePage(),
        NotificationsPage.routeName: (ctx) => NotificationsPage(),
        ChatScreen.routeName: (ctx) => ChatScreen(),
        ChatPage.routeName: (ctx) => ChatPage(),
      },
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({
//     super.key,
//   });

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   // int index = 0;
//   // bool MTBSelected = false;
//   // bool TodaySelected = true;
//   @override
//   Widget build(BuildContext context) {
//     // final items = <Widget>[
//     //   const Icon(Icons.home),
//     //   const Icon(Icons.notifications),
//     // ];
//     return Scaffold(
//       body: SplashScreen(),
//     );
//   }
// }

class currentuser {
  static late int roleid;
}

class remaining {
  static var leaves;
}

