import 'package:flutter/material.dart';

class TimeSheet extends StatefulWidget {
  TimeSheet({Key? key}) : super(key: key);

  @override
  State<TimeSheet> createState() => _TimeSheetState();
}

class _TimeSheetState extends State<TimeSheet> {
  @override
  Widget build(BuildContext context) {
   return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 12.0,
                    bottom: 12,
                    left: 20,
                  ),
                  child: Text('Time Sheet'),
                ),
                Container(
                  height: 208,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:21.0,),
                        child: makeDashboardItem('Your Attendence', '116', Icons.calendar_month_rounded, 0XFFE84201, 0XFFFFF3EE),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(left:10.0, right: 5),
                        child: makeDashboardItem('Your Attendence', '116', Icons.calendar_month_rounded, 0XFFE84201, 0XFFFFF3EE),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(left:5.0, right: 19),
                        child: makeDashboardItem('Your Attendence', '116', Icons.calendar_month_rounded, 0XFFE84201, 0XFFFFF3EE),
                      ),
                    ],
                  ),
                ),
              ],
            );
  }
  Container makeDashboardItem(
    String title,
    String users,
    IconData icon,
    int colorCode,
    int subColorCode,
  ) {
    return Container(
      height: 165,
      width: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {
          var _value = title;
          if (_value == 'Scheduled Visits') {
            // Navigator.of(context).pushNamed(ClientList.routeName);
          } else if (_value == 'Unscheduled Visits') {
          } else if (_value == "Scheduled Visits Done") {
          } else if (_value == 'Unscheduled Visits Done') {}
        },
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      color: Color(subColorCode),
                      height: 26,
                      width: 26,
                      child: Icon(
                        icon,
                        color: Color(colorCode),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 15,
                      left: 5,
                    ),
                    child: Text(
                      users,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  top: 15,
                ),
                child: Text(
                  title, textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}