import 'package:flutter/material.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:vignyan/resetpass.dart';

import 'main.dart';

import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:timer_count_down/timer_count_down.dart';

// import 'resetpass.dart';
// import 'package:timer_count_down/timer_controller.dart';
// import 'package:dropdownfield/dropdownfield.dart';

// import 'package:get/get_connect/http/src/utils/utils.dart';

// void main(List<String> args) {
//   runApp(MaterialApp(
//     home: otppage(),
//     // debugShowCheckedModeBanner: true,
//   ));
// }

var startTimer;
var btnEnabled = false;
bool wait = false;
int start = 30;
String buttonName = "Resend";
BoxDecoration get _pinPutDecoration {
  var boxDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(0),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  );
  return boxDecoration;
  // color: Colors.grey[200],
  // borderRadius: BorderRadius.circular(10.0),
}

class otppage extends StatefulWidget {
  const otppage({Key? key}) : super(key: key);

  @override
  State<otppage> createState() => _otppageState();
}

class _otppageState extends State<otppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          size: 40,
          color: Color.fromARGB(255, 60, 15, 112),
        ),
        title: Text(
          "OTP Verification",
          style: TextStyle(color: Color.fromARGB(255, 41, 52, 98)),
        ),
        centerTitle: true,
        elevation: 1,
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: 429,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(top: 50),
          height: 50,
          child: Column(
            children: [
              // Container(
              //   padding: EdgeInsets.all(15.0),
              //   child: Container(
              //     child: Column(
              //       children: [
              //         Text(
              //           "OTP Verification",
              //           style: TextStyle(
              //               fontWeight: FontWeight.bold,
              //               color: Color.fromARGB(255, 109, 15, 128)),
              //         )
              //       ],
              //     ),
              //   ),
              // ),
              Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              // decoration: BoxDecoration(),
                              height: 40,
                              width: Get.width * .8,
                              child: PinPut(
                                  keyboardType: TextInputType.number,
                                  submittedFieldDecoration:
                                      _pinPutDecoration.copyWith(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  followingFieldDecoration:
                                      _pinPutDecoration.copyWith(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  selectedFieldDecoration: _pinPutDecoration,
                                  fieldsCount: 4),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                // padding: EdgeInsets.all(25.0),
                height: 50,
                child: Column(children: [
                  Text(
                    "We Have sent an OTP to your mail id",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 41, 52, 98)),
                  ),
                  Text(
                    "Please verify and confirm",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 41, 52, 98)),
                  ),
                ]),
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                child: Row(
                  children: [MyWidget()],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40, width: 100,
                // padding: EdgeInsets.only(left: 100, right: 100),
                child: ElevatedButton(
                  child: Text("Verify"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 41, 52, 98)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                          color: Color.fromARGB(255, 41, 52, 98),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => resetpass()),
                    );
                  },
                  // shape: new RoundedRectangleBorder(
                  //   borderRadius: new BorderRadius.circular(32.0),
                  // ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final CountdownController _con = CountdownController(autoStart: true);
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        padding: EdgeInsets.only(left: 100),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              print('sss');
              setState(() {
                _con.restart();
              });
            },
            child: Text(
              "Resend",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 41, 52, 98),),
            ),
          ),
        ),
      ),
      Countdown(
        controller: _con,
        seconds: 30,
        build: (BuildContext context, double time) => Text(
            time.toString().split('.')[0] + ' sec',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey)),
        interval: Duration(milliseconds: 100),
        onFinished: () {
          setState(() {});
        },
      ),
    ]);
  }
}

// class Resetpass extends StatelessWidget {
//   const Resetpass({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: Colors.deepPurple[400],
//         title: Text(
//           "Reset Password",
//           textAlign: TextAlign.center,
//         ),
//       ),
//       body: resetbody(),
//     );
//   }
// }

// class resetbody extends StatefulWidget {
//   resetbody({Key? key}) : super(key: key);

//   @override
//   State<resetbody> createState() => _resetbodyState();
// }

// class _resetbodyState extends State<resetbody> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
//       child: ListView(
//         children: [
//           Container(
//             padding: EdgeInsets.all(10),
//             child: TextField(
//                 keyboardType: TextInputType.number,
//                 // controller: namesfield,
//                 decoration: InputDecoration(
//                     contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//                     labelText: 'New password',
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(32.0)))),
//           ),
//           Container(
//             padding: EdgeInsets.all(10),
//             child: TextField(
//                 keyboardType: TextInputType.number,
//                 // controller: namesfield,
//                 decoration: InputDecoration(
//                     contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//                     labelText: 'Confirm password',
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(32.0)))),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Container(
//             height: 40,
//             padding: EdgeInsets.only(left: 100, right: 100),
//             child: RaisedButton(
//               textColor: Colors.grey,
//               color: Colors.white,
//               child: Text("Save"),
//               onPressed: () {},
//               shape: new RoundedRectangleBorder(
//                 borderRadius: new BorderRadius.circular(32.0),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
