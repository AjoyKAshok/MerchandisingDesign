import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:rmsdesign/utils/merchandiser/activityperformance.dart';
import 'package:rmsdesign/utils/merchandiser/performanceindicators.dart';
import 'package:rmsdesign/utils/merchandiser/timesheet.dart';
import 'package:rmsdesign/utils/merchandiser/travelplan.dart';
import 'package:rmsdesign/utils/merchandiserdrawer.dart';

import '../utils/background.dart';
import 'merchandiserjourneyplan.dart';

class MerchandiserDashborard extends StatefulWidget {
  static const routeName = '/MerchandiserDashboard';
  MerchandiserDashborard({Key? key}) : super(key: key);

  @override
  State<MerchandiserDashborard> createState() => _MerchandiserDashborardState();
}

class _MerchandiserDashborardState extends State<MerchandiserDashborard> {
  bool MTBSelected = true;
  bool TodaySelected = false;
  int? index;
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.home),

      // Container(
      //   height: 60,
      //   width: 60,
      //   decoration: const BoxDecoration(
      //     shape: BoxShape.circle,
      //     gradient: LinearGradient(
      //             begin: Alignment.topLeft,
      //             end: Alignment.centerRight,
      //             colors: [Color(0xFFF88200), Color(0xFFE43700)]),
      //   ),
      //     child: ElevatedButton(
      //   onPressed: () {},
      //   child: Text(
      //     'START DAY',
      //   ),
      // )),

      // GestureDetector(
      //   onTap: () {},
      //   child: Container(
      //     height: 60,
      //     width: 60,
      //       decoration: const BoxDecoration(
      //         shape: BoxShape.circle,
      //         gradient: LinearGradient(
      //             begin: Alignment.topLeft,
      //             end: Alignment.centerRight,
      //             colors: [Color(0xFFF88200), Color(0xFFE43700)]),
      //       ),
      //       child: const Center(
      //         child: Text(
      //           'START DAY',
      //           style: TextStyle(
      //             color: Colors.white,
      //           ),
      //           textAlign: TextAlign.center,
      //         ),
      //       )),
      // ),

      // FloatingActionButton(
      //   backgroundColor: Colors.orange,
      //   onPressed: () {
      //     print('START DAY PRESSED');
      //   },
      //   child: const Text(
      //     'START DAY',
      //     textAlign: TextAlign.center,
      //     style: TextStyle(
      //       fontSize: 12,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
      const Icon(Icons.notifications),
    ];
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {
          print('START DAY PRESSED');
          showModalBottomSheet(
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            context: context,
            builder: (context) => BottomModalSheet(),
          );
        },
        child: Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xFFF88200), Color(0xFFE43700)]),
            ),
            child: const Center(
              child: Text(
                'START DAY',
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: Image.asset(
              "images/NewRMSMenu.png",
              height: 25,
              width: 44,
              color: Color(0XFF505050),
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              height: 30,
              image: AssetImage('images/rmsLogo.png'),
            ),
            const SizedBox(
              width: 70,
            ),
            Container(
              width: 210,
              height: 36,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          MTBSelected = true;
                          TodaySelected = false;
                        });
                      },
                      child: Container(
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          gradient: MTBSelected == true
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
                        child: Center(
                          child: Text(
                            'MTB',
                            style: TextStyle(
                              color: MTBSelected == true
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          TodaySelected = true;
                          MTBSelected = false;
                        });
                      },
                      child: Container(
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          gradient: TodaySelected == true
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
                        child: Center(
                          child: Text(
                            'Today',
                            style: TextStyle(
                              color: TodaySelected == true
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: MerchandiserDrawer(),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        items: items,
        index: index ?? 0,
        height: 60,
        onTap: (index) => setState(() {
          this.index = index;
        }),
      ),
      body: Stack(
        children: [
          BackGround(),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PerformanceIndicators(),
                TimeSheet(),
                TravelPlan(),
                ActivityPerformance(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomModalSheet extends StatefulWidget {
  @override
  State<BottomModalSheet> createState() => _BottomModalSheetState();
}

class _BottomModalSheetState extends State<BottomModalSheet> {
  bool isUniformChecked = false;
  bool isChargerChecked = false;
  bool isTransportationChecked = false;
  bool isPOSMChecked = false;
  bool isLocationChecked = false;
  bool isAllChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .66,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: 19,
                    top: 18,
                  ),
                  child: Text(
                    'Roll Call',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                    top: 20,
                  ),
                  child: GestureDetector(
                      onTap: () {
                        print('Close Button Tapped');
                        Navigator.of(context).pop();
                      },
                      child: const Icon(
                        Icons.close,
                        size: 12,
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    activeColor: Colors.orange,
                    value: isUniformChecked,
                    onChanged: (value) {
                      setState(() {
                        isUniformChecked = value!;
                      });
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Uniform & Hygiene'),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    activeColor: Colors.orange,
                    value: isChargerChecked,
                    onChanged: (value) {
                      setState(() {
                        isChargerChecked = value!;
                      });
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Hand held unit charge'),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    activeColor: Colors.orange,
                    value: isTransportationChecked,
                    onChanged: (value) {
                      setState(() {
                        isTransportationChecked = value!;
                      });
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Transportation'),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    activeColor: Colors.orange,
                    value: isPOSMChecked,
                    onChanged: (value) {
                      setState(() {
                        isPOSMChecked = value!;
                      });
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('POSM'),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    activeColor: Colors.orange,
                    value: isLocationChecked,
                    onChanged: (value) {
                      setState(() {
                        isLocationChecked = value!;
                      });
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Location'),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 36,
              ),
              child: Text(
                  'Note: If you are tring to checkout any unfinished outlet, please synchronize & try again'),
            ),
            SizedBox(
              height: 17,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: GestureDetector(
                onTap: () {
                  isAllChecked
                      ? print('All Checked')
                      : print('All parameters are not checked');
                },
                child: GestureDetector(
                  onTap: isUniformChecked
                      ? () => Navigator.of(context)
                          .pushNamed(MerchandiserJourneyPlan.routeName)
                      : isChargerChecked
                          ? () => Navigator.of(context)
                              .pushNamed(MerchandiserJourneyPlan.routeName)
                          : isTransportationChecked
                              ? () => Navigator.of(context)
                                  .pushNamed(MerchandiserJourneyPlan.routeName)
                              : isPOSMChecked
                                  ? () => Navigator.of(context).pushNamed(
                                      MerchandiserJourneyPlan.routeName)
                                  : isLocationChecked
                                      ? () => Navigator.of(context).pushNamed(
                                          MerchandiserJourneyPlan.routeName)
                                      : () {
                                          print(
                                              'Perform any of the checks and try again');
                                        },
                  child: Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.centerRight,
                        colors: isUniformChecked
                            ? [Color(0xFFF88200), Color(0xFFE43700)]
                            : isChargerChecked
                                ? [Color(0xFFF88200), Color(0xFFE43700)]
                                : isTransportationChecked
                                    ? [Color(0xFFF88200), Color(0xFFE43700)]
                                    : isPOSMChecked
                                        ? [Color(0xFFF88200), Color(0xFFE43700)]
                                        : isLocationChecked
                                            ? [
                                                Color(0xFFF88200),
                                                Color(0xFFE43700)
                                              ]
                                            : [
                                                Color(0xFFC4C4C4),
                                                Color(0xFF9F9F9F),
                                              ],
                      ),
                    ),
                    child: const Center(child: Text('OK')),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
