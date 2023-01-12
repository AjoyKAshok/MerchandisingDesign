import 'package:flutter/material.dart';

import '../utils/background.dart';

class YetToVisitStores extends StatefulWidget {
  static const routeName = '/YetToVisit';
  YetToVisitStores({Key? key}) : super(key: key);

  @override
  State<YetToVisitStores> createState() => _YetToVisitStoresState();
}

class _YetToVisitStoresState extends State<YetToVisitStores> {
  bool isTodaySelected = true;
  bool isWeekSelected = false;
  bool isCustomersSelected = false;
  bool isPlannedSelected = false;
  bool isYetToVisitSelected = true;
  bool isVisitedSelected = false;
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
                                  child: Text('Planned'),
                                ),
                              ),
                              SizedBox(
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
                                  },
                                  child: Text('Yet to Visit'),
                                ),
                              ),
                              SizedBox(
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
                                  child: Text('Visited'),
                                ),
                              ),
                              SizedBox(
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
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: GestureDetector(
                      onTap: () {
                        print('Clicked on 1st');
                      },
                      child: makeJourneyPlanContainer(
                          'Umm Al Sheif Market',
                          '2587',
                          '8-14/207, Al Meydan Road Dubai',
                          '+91 9885100237',
                          '123.37',
                          0XFFF76F8D,
                          0XFF1EC2C1,
                          0XFF5589EA)),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: GestureDetector(
                      onTap: () {
                        print('Clicked on 2nd');
                      },
                      child: makeJourneyPlanContainer(
                          'Sheba Super Market',
                          '2587',
                          '8-14/207, Al Meydan Road Dubai',
                          '+91 9885100237',
                          '123.37',
                          0XFFF76F8D,
                          0XFF1EC2C1,
                          0XFF5589EA)),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: GestureDetector(
                      onTap: () {
                        print('Clicked on 3rd');
                      },
                      child: makeJourneyPlanContainer(
                          'Umm Al Sheif Market',
                          '2587',
                          '8-14/207, Al Meydan Road Dubai',
                          '+91 9885100237',
                          '123.37',
                          0XFFF76F8D,
                          0XFF1EC2C1,
                          0XFF5589EA)),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: GestureDetector(
                      onTap: () {
                        print('Clicked on 4th');
                      },
                      child: makeJourneyPlanContainer(
                          'Al Quoz Market',
                          '2587',
                          '8-14/207, Al Meydan Road Dubai',
                          '+91 9885100237',
                          '123.37',
                          0XFFF76F8D,
                          0XFF1EC2C1,
                          0XFF5589EA)),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: GestureDetector(
                      onTap: () {
                        print('Clicked on 5th');
                      },
                      child: makeJourneyPlanContainer(
                          'Al Quoz Market',
                          '2587',
                          '8-14/207, Al Meydan Road Dubai',
                          '+91 9885100237',
                          '123.37',
                          0XFFF76F8D,
                          0XFF1EC2C1,
                          0XFF5589EA)),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: GestureDetector(
                      onTap: () {},
                      child: makeJourneyPlanContainer(
                          'Al Quoz Market',
                          '2587',
                          '8-14/207, Al Meydan Road Dubai',
                          '+91 9885100237',
                          '123.37',
                          0XFFF76F8D,
                          0XFF1EC2C1,
                          0XFF5589EA)),
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
                    padding: EdgeInsets.only(
                      left: 10,
                      top: 15,
                    ),
                    child: Text(
                      outletCode,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
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
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 14.0),
                    child: Icon(Icons.forward),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      top: 15,
                    ),
                    child: Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                        color: Color(phoneColorCode),
                      ),
                      child: Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      top: 15,
                    ),
                    child: Text(
                      phoneNumber,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      top: 15,
                    ),
                    child: Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                        color: Color(distanceColorCode),
                      ),
                      child: Icon(
                        Icons.location_pin,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      top: 15,
                    ),
                    child: Text(
                      distanceInKms,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
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
}
