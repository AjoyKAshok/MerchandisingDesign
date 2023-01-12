import 'package:flutter/material.dart';

class PerformanceIndicators extends StatefulWidget {
  const PerformanceIndicators({super.key});

  @override
  State<PerformanceIndicators> createState() => _PerformanceIndicatorsState();
}

class _PerformanceIndicatorsState extends State<PerformanceIndicators> {
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
                  child: Text('Performance Indicators'),
                ),
                Container(
                  height: 208,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 21, right: 11),
                          child: Row(
                            children: [
                              Expanded(
                                child: makeDashboardItem('Scheduled Visits',
                                    '404', Icons.phone, 0XFFF76F8D, 0XFFFFC6D3),
                              ),
                              SizedBox(
                                width: 11,
                              ),
                              Expanded(
                                child: makeDashboardItem(
                                    'Unscheduled Visits',
                                    '47',
                                    Icons.warning,
                                    0XFF1EC2C1,
                                    0XFF77F4F4),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 21, right: 11),
                          child: Row(
                            children: [
                              Expanded(
                                child: makeDashboardItem(
                                    'Scheduled Visits Done',
                                    '81',
                                    Icons.call_made_outlined,
                                    0XFF5589EA,
                                    0XFF5589EA),
                              ),
                              SizedBox(
                                width: 11,
                              ),
                              Expanded(
                                child: makeDashboardItem(
                                    'Unscheduled Visits Done',
                                    '19',
                                    Icons.call_made_outlined,
                                    0XFFF4B947,
                                    0XFFF9B636),
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
  Container makeDashboardItem(
    String title,
    String users,
    IconData icon,
    int colorCode,
    int subColorCode,
  ) {
    return Container(
      height: 95,
      width: 162,
      decoration: BoxDecoration(
        color: Color(colorCode),
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
                        color: Colors.white,
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
                      style: TextStyle(color: Colors.white),
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
                  title,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}