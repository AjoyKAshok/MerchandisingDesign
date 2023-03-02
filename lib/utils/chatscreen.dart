import 'package:flutter/material.dart';
import 'package:rmsdesign/utils/background.dart';

class ChatScreen extends StatefulWidget {
  static const routeName = '/chatscreen';
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("Chat Screen"),
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
          'RMS Team',
          style: TextStyle(
            color: Color(0XFF909090),
          ),
          textAlign: TextAlign.left,
        ),
      ),
      body: Stack(
        children: [
          BackGround(),
          Column(
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    var posIndex = index % 2;
                    return Container(
                      padding: EdgeInsets.all(20.0),
                      child: Container(
                          child: Row(
                        mainAxisAlignment: posIndex == 0
                            ? MainAxisAlignment.end
                            : MainAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .6,
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 14),
                            margin: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: posIndex == 0
                                  ? const LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                          Colors.white,
                                          Colors.white,
                                        ])
                                  :  const LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                          Color(0xFFF88200),
                                          Color(0xFFE43700)
                                        ]),
                            ),
                            child: Text(
                              "Message $index",
                              style: TextStyle(
                                color:
                                    posIndex == 0 ? Colors.black : Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )),
                    );
                  },
                ),
              ),
              Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  color: Colors.white,
                ),
                // color: Colors.white,
                padding: EdgeInsets.only(bottom: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 60,
                        padding: EdgeInsets.all(10.0),
                        color: Colors.white,
                        child: TextField(
                          controller: _textController,
                          decoration: InputDecoration(
                            hintText: "Enter your message",
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.send,
                        color: Color(0XFFE84201),
                      ),
                    ),
                   
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
