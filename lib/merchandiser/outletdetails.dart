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
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              top: 14,
              right: 20,
            ),
            child: Container(
              height: 354,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 14, top: 14),
                    child: Text(
                      '[2587] Al Quoz Market',
                      style: TextStyle(
                        color: Color(0XFF505050),
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 14,
                    ),
                    child: Text(
                      '8-14/207, Al Meydan Road, Dubai',
                      style: TextStyle(
                        color: Color(0xFF909090),
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 15,
                      child: Row(
                        children: [
                          Container(
                            width: 12,
                            height: 12,
                            decoration: const BoxDecoration(
                              color: Color(0XFFE84201),
                            ),
                            child: const Icon(
                              Icons.call,
                              size: 10,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            '+91 9885100237',
                            style: TextStyle(
                                color: Color(0XFF909090),
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 12,
                            height: 12,
                            decoration: const BoxDecoration(
                              color: Color(0XFFE84201),
                            ),
                            child: const Icon(
                              Icons.location_pin,
                              size: 10,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 14,
                          ),
                          const Text(
                            '123.37 Kms',
                            style: TextStyle(
                                color: Color(0XFF909090),
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      top: 15,
                      right: 15,
                      bottom: 14,
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 231,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        'images/map.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 381),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 217,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 17,
                          top: 15,
                        ),
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            color: Color(
                              0XFF909090,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15.0),
                        child: Text(
                          'Monthly Expected Visits',
                          style: TextStyle(
                            color: Color(0XFF909090),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                        ),
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            color: Color(
                              0XFFE84201,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15.0),
                        child: Text(
                          'Monthly Visits Done',
                          style: TextStyle(
                            color: Color(0XFF909090),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 30,
              top: 690,
            ),
            child: GestureDetector(
              onTap: () {
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
                height: 55,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFFF88200),
                      Color(0xFFE43700),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                    child: Text(
                  'Check In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                )),
              ),
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
      height: MediaQuery.of(context).size.height * .48,
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
                    'Alert',
                    style: TextStyle(
                      color: Color(0XFF505050),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
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
                        size: 16,
                        color: Color(0XFF505050),
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
              padding: EdgeInsets.only(
                left: 150,
                right: 150,
                top: 30,
              ),
              child: Container(
                width: (MediaQuery.of(context).size.width - 75) / 2,
                height: 100,
                child: Icon(
                  Icons.warning_rounded,
                  size: 100,
                  color: Color(0XFF909090),
                ),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 36,
              ),
              child: Text(
                  'It seems that you are not ath the customer location. Please try after reaching the customer location.'),
            ),
            SizedBox(
              height: 45,
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
                  onTap: () {},
                  // onTap: isUniformChecked
                  //     ? () => Navigator.of(context)
                  //         .pushNamed(MerchandiserJourneyPlan.routeName)
                  //     : isChargerChecked
                  //         ? () => Navigator.of(context)
                  //             .pushNamed(MerchandiserJourneyPlan.routeName)
                  //         : isTransportationChecked
                  //             ? () => Navigator.of(context)
                  //                 .pushNamed(MerchandiserJourneyPlan.routeName)
                  //             : isPOSMChecked
                  //                 ? () => Navigator.of(context).pushNamed(
                  //                     MerchandiserJourneyPlan.routeName)
                  //                 : isLocationChecked
                  //                     ? () => Navigator.of(context).pushNamed(
                  //                         MerchandiserJourneyPlan.routeName)
                  //                     : () {
                  //                         print(
                  //                             'Perform any of the checks and try again');
                  //                       },
                  child: Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.centerRight,
                          colors: [Color(0xFFF88200), Color(0xFFE43700)]),
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
