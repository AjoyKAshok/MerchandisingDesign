import 'package:flutter/material.dart';

class ProgressHUD extends StatelessWidget {
  final Widget child;
  final bool inAsyncCall;
  final double opacity;
  final Color color;
  final Animation<Color> valueColor;

  ProgressHUD({
    required Key key,
    required this.child,
    required this.inAsyncCall,
    required this.opacity,
    this.color = Colors.grey,
    required this.valueColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   List<Widget> widgetList = <Widget>[];
    widgetList.add(child);
    if (inAsyncCall) {
      final modal = Stack(
        children: [
          Opacity(
            opacity: opacity,
            child: ModalBarrier(dismissible: false, color: color),
          ),
          const Center(
              child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.orange),
          )),
        ],
      );
      widgetList.add(modal);
    }
    return Stack(
      children: widgetList,
    );
  }
}
