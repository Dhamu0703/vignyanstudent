import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'Forgetpassword.dart';
import 'home.dart';
import 'navigation.dart';
import 'package:vignyan/trasnport.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:another_flushbar/flushbar.dart';


import 'package:sizer/sizer.dart';
void main() async {
 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        defaultTransition: Transition.cupertino,
        title: 'Vignayn',
        themeMode: ThemeMode.light,
        theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        // home: GetStorage().read('userid').toString() == 'null'
        //     ? WelcomeScreen()
        //     : BottamBar(currentindex: 0),
        home: bodypart(),
        // home: MobileEntryView(),
        debugShowCheckedModeBanner: false,
      );
    }
    );
  }
}
class bodypart extends StatefulWidget {
  const bodypart({ Key? key }) : super(key: key);

  @override
  State<bodypart> createState() => _bodypartState();
}

class _bodypartState extends State<bodypart> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool doNotShowPassword = false;
  bool loading = false;

  login({required String name, required password}) async {
    // print("name");
    print(name);
    print(password);
    bool nameValid = RegExp(
            r"^[D][h][a][m][u]+")
        .hasMatch(name);
    bool passWordValid = RegExp(
      r"^[d][h][@][m][u][0][0][7]"
      // r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"
      )
      .hasMatch(password);
    if (name == "" || password == "") {
      // print("Please fill all fields");
        Fluttertoast.showToast(msg: 'Please fill all fields');

     
      // Flushbar(
      //   message: "Please fill all fields",
      //   duration: Duration(seconds: 2),
      // ).show(context);
      // setState(() {
      //   loading = false;
      // }
      // );
    } else if (!nameValid) {
      print("Enter valid Name or ID");
      // Flushbar(
      //   message: "Enter valid Email Address",
      //   duration: Duration(seconds: 2),
      // )..show(context);
      // setState(() {
      //   loading = false;
      // });
    } else if(!passWordValid) {
      print("Enter valid Password");
      // Flushbar(
      //   message: "Password should contain Minimum eight characters, at least one uppercase letter, one lowercase letter, one number and one special character",
      //   duration: Duration(seconds: 2),
      // )..show(context);
      // setState(() {
      //   loading=false;
      // });
    }
    else {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return home();
      }));
      setState(() {
        loading=false;
      });
      _nameController.clear();
      _passwordController.clear();
    }
  }

  @override
  void initState() {
    doNotShowPassword = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Sizer(builder: (context, orientation, deviceType) {
    return Scaffold(
      appBar: AppBar(title: Text("VIGNYAN SCHOOLS",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 41, 52, 98),),
      
        body: Container(
          alignment: Alignment.center,
          height: 500.sp,
          width: 300,
          // color: Colors.amber,
        margin: EdgeInsets.fromLTRB(30, 40, 0, 0),
        child: SingleChildScrollView(
          child: Column(
          children: [
            
            Text("Students Login",
            style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 41, 52, 98),
            fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Image(image: AssetImage("assets/student.png")),
            SizedBox(
              height: 20,
            ),
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              
               contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
               
              hintText: "student ID/Name",
              
              
              alignLabelWithHint: false,
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1), 
                  borderRadius: BorderRadius.circular(30),
                  
                  
              ),
               focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1,),
                  borderRadius: BorderRadius.circular(30),
            ),
            
          ),),
          SizedBox(
            height: 20,
          ),
           TextField(
            controller: _passwordController,
             obscureText: true,
            
            decoration: InputDecoration(
               contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
              hintText: "Password",

              alignLabelWithHint: true,
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1), 
                  borderRadius: BorderRadius.circular(30),
                  
              ),
               focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, ),
                  borderRadius: BorderRadius.circular(30),
            ),
            
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
              children: [
                
                TextButton(onPressed: (){
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Forgetpassword()),
  );
                }, 
          child: Text("Forget Password?",
          
          style: TextStyle(color: Colors.black),
          )
          ),
              ],
          ),
          SizedBox(
            height: 20,
          ),

           loading
                  ? Center(child: CircularProgressIndicator())
                  : GestureDetector(
                      onTap: () {
                        setState(() {
                          // loading=false;
                        });
                        login(
                            name: _nameController.text,
                            password: _passwordController.text);
                      },
                      child: Container(
                        height: 40,
                        width: 100,
                        margin: EdgeInsets.symmetric(horizontal: 75),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 41, 52, 98),
                        ),
                        child: Center(
                          child: Text('Login',
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
          
  //         ElevatedButton(
            
            
  //           style: ElevatedButton.styleFrom(
  //              shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(50.0)),
  //             minimumSize: Size(105, 45),
  //             primary: Color.fromARGB(255, 41, 52, 98),
  //           ),
               
  //           onPressed: (){
              
  //             Navigator.push(
  //   context,
  //   MaterialPageRoute(builder: (context) => const navigation()),
  //      );
  //      }, 
  // child: Text("Login",
  
  // style: TextStyle(fontWeight: FontWeight.bold,
  //           fontSize: 20),
            
  //           ))
          ],
        ),
        ),
        )
    );
   } );
  }
}

