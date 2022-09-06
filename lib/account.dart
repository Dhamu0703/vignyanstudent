import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vignyan/Forgetpassword.dart';
import 'package:vignyan/changepassword.dart';

class account extends StatefulWidget {
  const account({Key? key}) : super(key: key);

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Color.fromARGB(255, 41, 52, 98),
       title: Text("Account",style: TextStyle(
         fontWeight: FontWeight.bold,fontSize: 25,
       ),),
     ),
     body: SafeArea(child:  
     
     Column(
       children: [
         Container(
           margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
           child: Card(
             elevation: 2,
           child: ListTile(
                  onTap: () {
                    Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const changepassword()),
    );
                  },
                  leading:  Image.asset("assets/password.png",width: 30,),
                  title: const Text(
                    'Change Password',
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                  
                ),
                
         ),
         
         
              
               
            ),
            Container(
           margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
           child: Card(
             elevation: 2,
           child: ListTile(
                  onTap: () {
                    Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Forgetpassword()),
    );
                  },
                  leading:  Image.asset("assets/confused.png",width: 30,),
                  title: const Text(
                    'Forget Password',
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                  
                ),
                
         ),
         
         
              
               
            ),
       ],
     ),
      
     )
    );
  }
}