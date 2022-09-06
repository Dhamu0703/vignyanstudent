import 'package:flutter/material.dart';
import 'package:vignyan/otppage.dart';


class Forgetpassword extends StatefulWidget {
  const Forgetpassword({Key? key}) : super(key: key);

  @override
  State<Forgetpassword> createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          // color: Color.fromARGB(255, 75, 31, 146)
          ),
        // centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Forget Password",
          style: TextStyle(color: Color.fromARGB(255, 41, 52, 98),),
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 25, 10, 0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(2),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Email IDs / Mobile number",
                      contentPadding:
                          EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 10.0),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              BorderSide(color: Colors.white, width: 3.0
                              )
                              )
                              ),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color:Color.fromARGB(255, 41, 52, 98),
                      blurRadius: 6,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 40,
              padding: EdgeInsets.only(left: 100, right: 100),
              child: ElevatedButton(
                child: Text("Get OTP"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 41, 52, 98),),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        // color: Color.fromARGB(255, 60, 15, 112),
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => otppage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
    
  }
}