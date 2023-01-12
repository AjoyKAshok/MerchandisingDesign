import 'package:flutter/material.dart';
import 'package:rmsdesign/merchandiser/outletdetails.dart';
import 'package:rmsdesign/utils/background.dart';

class WeeklyJourneyPlan extends StatefulWidget {
  static const routeName = '/WeeklyJourneyPlanPlanned';
  WeeklyJourneyPlan({Key? key}) : super(key: key);

  @override
  State<WeeklyJourneyPlan> createState() => _WeeklyJourneyPlanState();
}

class _WeeklyJourneyPlanState extends State<WeeklyJourneyPlan> {
  bool isTodaySelected = false;
  bool isWeekSelected = true;
  bool isCustomersSelected = false;
  bool isPlannedSelected = true;
  bool isYetToVisitSelected = false;
  bool isVisitedSelected = false;
  bool isexpanded = false;
  bool issundayexpanded = true;
  bool ismondayexpanded = true;
  bool istuesdayexpanded = true;
  bool iswednesdayexpanded = true;
  bool isthursdayexpanded = true;
  bool isfridayexpanded = true;
  bool issaturdayexpanded = true;
  IconData trailingIcon = Icons.add;
  IconData trailingExpandedIcon = Icons.remove;
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
          'Journey Plan',
          style: TextStyle(
            color: Color(0XFF909090),
          ),
          textAlign: TextAlign.left,
        ),
        actions: [
          Container(
              width: 120,
              child: Row(
                children: const [
                  Icon(
                    Icons.location_on,
                    color: Color(0XFF909090),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 19,
                    ),
                    child: Text(
                      'Over All',
                      style: TextStyle(
                        color: Color(0XFFE84201),
                      ),
                    ),
                  )
                ],
              )),
        ],
      ),
      body: Stack(
        children: [
          BackGround(),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isTodaySelected = true;
                          isWeekSelected = false;
                          isCustomersSelected = false;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          top: 16,
                        ),
                        child: Container(
                          height: 54,
                          width: 105,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: isTodaySelected
                                ? Color(0XFFE84201)
                                : Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              'Todays Journey Plan',
                              style: TextStyle(
                                color: isTodaySelected
                                    ? Colors.white
                                    : Color(0XFF909090),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isTodaySelected = false;
                          isWeekSelected = true;
                          isCustomersSelected = false;
                        });
                        // Navigator.of(context)
                        //     .pushNamed(WeeklyJourneyPlan.routeName);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 11,
                          top: 16,
                        ),
                        child: Container(
                          height: 54,
                          width: 105,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: isWeekSelected
                                ? Color(0XFFE84201)
                                : Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              'Weeks Journey Plan',
                              style: TextStyle(
                                color: isWeekSelected
                                    ? Colors.white
                                    : Color(0XFF909090),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isTodaySelected = false;
                          isWeekSelected = false;
                          isCustomersSelected = true;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          top: 16,
                          right: 19,
                        ),
                        child: Container(
                          height: 54,
                          width: 105,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: isCustomersSelected
                                ? Color(0XFFE84201)
                                : Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              'My Customers',
                              style: TextStyle(
                                color: isCustomersSelected
                                    ? Colors.white
                                    : Color(0XFF909090),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 15,
                    right: 20,
                  ),
                  child: Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isPlannedSelected = true;
                                      isYetToVisitSelected = false;
                                      isVisitedSelected = false;
                                    });
                                  },
                                  child: const Text('Planned'),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: 80,
                                height: 3,
                                decoration: BoxDecoration(
                                  gradient: isPlannedSelected == true
                                      ? const LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                              Color(0xFFF88200),
                                              Color(0xFFE43700)
                                            ])
                                      : const LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                              Color(0xFFFFFFFF),
                                              Color(0xFFFFFFFF)
                                            ]),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isPlannedSelected = false;
                                      isYetToVisitSelected = true;
                                      isVisitedSelected = false;
                                    });
                                    // Navigator.of(context).pushReplacementNamed(
                                    //     YetToVisitStores.routeName);
                                  },
                                  child: const Text('Yet to Visit'),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: 80,
                                height: 3,
                                decoration: BoxDecoration(
                                  gradient: isYetToVisitSelected == true
                                      ? const LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                              Color(0xFFF88200),
                                              Color(0xFFE43700)
                                            ])
                                      : const LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                              Color(0xFFFFFFFF),
                                              Color(0xFFFFFFFF)
                                            ]),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isPlannedSelected = false;
                                      isYetToVisitSelected = false;
                                      isVisitedSelected = true;
                                    });
                                  },
                                  child: const Text('Visited'),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: 80,
                                height: 3,
                                decoration: BoxDecoration(
                                  gradient: isVisitedSelected == true
                                      ? const LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                              Color(0xFFF88200),
                                              Color(0xFFE43700)
                                            ])
                                      : const LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                              Color(0xFFFFFFFF),
                                              Color(0xFFFFFFFF)
                                            ]),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    // top: 5,
                    right: 20,
                  ),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        dayTile(
                          'Sunday',
                          Icons.wb_sunny_outlined,
                          0XFFF76F8D,
                          // Icons.add,
                          0XFFE84201,
                          isexpanded,
                        ),
                        dayTile(
                          'Monday',
                          Icons.wb_sunny_outlined,
                          0XFF1EC2C1,
                          // Icons.add,
                          0XFFE84201,
                          isexpanded,
                        ),
                        dayTile(
                          'Tuesday',
                          Icons.wb_sunny_outlined,
                          0XFF5589EA,
                          // Icons.add,
                          0XFFE84201,
                          isexpanded,
                        ),
                        dayTile(
                          'Wednesday',
                          Icons.wb_sunny_outlined,
                          0XFFF4B947,
                          // Icons.add,
                          0XFFE84201,
                          isexpanded,
                        ),
                        dayTile(
                          'Thursday',
                          Icons.wb_sunny_outlined,
                          0XFFF76F8D,
                          // Icons.add,
                          0XFFE84201,
                          isexpanded,
                        ),
                        dayTile(
                          'Friday',
                          Icons.wb_sunny_outlined,
                          0XFF1EC2C1,
                          // Icons.add,
                          0XFFE84201,
                          isexpanded,
                        ),
                        dayTile(
                          'Saturday',
                          Icons.wb_sunny_outlined,
                          0XFF5589EA,
                          // Icons.add,
                          0XFFE84201,
                          isexpanded,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container makeJourneyPlanContainer(
    String title,
    String outletCode,
    String address,
    String phoneNumber,
    String distanceInKms,
    int arrowColorCode,
    int phoneColorCode,
    int distanceColorCode,
  ) {
    return Container(
      height: 106,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: InkWell(
        onTap: () {
          var _value = title;
          if (_value == 'Al Quoz Market') {
            print('Clicked on Al Quoz');
            // Navigator.of(context).pushNamed(ClientList.routeName);
          } else if (_value == 'Sheba Super Market') {
            print('Clicked on Sheba');
          } else if (_value == "Umm Al Sheif Market") {
            print('Clicked on Umm Al Sheif');
          } else if (_value == 'Unscheduled Visits Done') {}
        },
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 15,
                    ),
                    child: Text(
                      outletCode,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 15,
                    ),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      address,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 14.0),
                    child: Icon(Icons.forward),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 15,
                    ),
                    child: Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                        color: Color(phoneColorCode),
                      ),
                      child: const Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 15,
                    ),
                    child: Text(
                      phoneNumber,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      top: 15,
                    ),
                    child: Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                        color: Color(distanceColorCode),
                      ),
                      child: const Icon(
                        Icons.location_pin,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 15,
                    ),
                    child: Text(
                      distanceInKms,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  ExpansionTile dayTile(
    String DayName,
    IconData icon,
    int colorCode,
    // IconData addIcon,
    int iconColorCode,
    bool isExpanded,
  ) {
    return ExpansionTile(
      title: 
      // Container(
      //   height: 45,
      //   width: MediaQuery.of(context).size.width,
      //   decoration: BoxDecoration(
      //     color: Colors.white,
      //     borderRadius: BorderRadius.circular(6),
      //   ),
      //   child: 
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                color: Color(colorCode),
                ),
                width: 3,
                height: 45,
              ),
              const SizedBox(
                width: 10,
              ),
              Icon(
                icon,
                color: const Color(0XFF909090),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                DayName,
                style: const TextStyle(
                  color: Color(0XFF505050),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Icon(
              //   addIcon,
              //   color: Color(iconColorCode),
              // ),
            ],
          ),
        // ),
      ),

      iconColor: Color(iconColorCode),
      collapsedIconColor: Color(iconColorCode),
      onExpansionChanged: (bool expanded) {
        setState(() {
          isExpanded = expanded;

          print(isExpanded.toString());
          isExpanded ? print('$DayName Expanded') : print('$DayName Collapsed');
        });
      },

      /// THE BELOW CODE IS FOR THE + SIGN AT THE END OF THE EXTENSION TILE. HAS TO CUSTOMISE WITH THE ON TAP FUNCTIONALITY.
      ///
      // trailing: GestureDetector(
      //   onTap: () {
      //     isexpanded = !isexpanded;
      //     print('isexpaneded : $isexpanded');
      //   },
      //   child: Container(
      //     height: 45,
      //     color: Colors.white,
      //     child: isexpanded == false ? Icon(Icons.add) : Icon(Icons.remove),
      //   ),
      // ),

      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 10,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 96,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0XFFEBEBEB),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 3,
                        height: 96,
                        color: Color(colorCode),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            // ListTile(
                            //   onTap: () {
                            //      Navigator.of(context)
                            //         .pushNamed(OutletDetails.routeName);
                            //   },
                            //   title: Text('First Card'),
                            // ),
                            GestureDetector(
                              child: const Text('First Card'),
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(OutletDetails.routeName);
                              },
                            ),
                            Text('Second Card'),
                            Text('First Card'),
                            Text('Second Card'),
                            Text('First Card'),
                            Text('Second Card'),
                            Text('First Card'),
                            Text('Second Card'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
