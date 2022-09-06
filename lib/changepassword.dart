import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vignyan/main.dart';

class changepassword extends StatefulWidget {
  const changepassword({Key? key}) : super(key: key);

  @override
  State<changepassword> createState() => _changepasswordState();
}

class _changepasswordState extends State<changepassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 41, 52, 98),
        title: Text("Change Password"),
      ),

      body: 
      SingleChildScrollView(
        child:
      Container(
        margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
        width: double.infinity,
        height: 500,
        child: Column(
          children: [
            TextField(
            
        
            decoration: InputDecoration(
              
               contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
               
              hintText: "Old Password",
              
              
              alignLabelWithHint: false,
              
              enabledBorder: OutlineInputBorder(
                
                  borderSide: const BorderSide(width: 1,color: Colors.grey), 
                  borderRadius: BorderRadius.circular(10),
                  
                  
              ),
               focusedBorder: OutlineInputBorder(
                 
                  borderSide: const BorderSide(width: 1,color: Colors.grey ),
                  borderRadius: BorderRadius.circular(10),
            ),
            
          ),
          
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            
        
            decoration: InputDecoration(
              
               contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
               
              hintText: "New Password",
              
              
              alignLabelWithHint: false,
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1,color: Colors.grey), 
                  borderRadius: BorderRadius.circular(10),
                  
                  
              ),
               focusedBorder: OutlineInputBorder(
                 
                  borderSide: const BorderSide(width: 1, ),
                  borderRadius: BorderRadius.circular(10),
            ),
            
          ),
          
          
          ),
           SizedBox(
            height: 20,
          ),
          TextField(
            
        
            decoration: InputDecoration(
              
               contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
               
              hintText: "Confirm Password",
              
              
              alignLabelWithHint: false,
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1,color: Colors.grey), 
                  borderRadius: BorderRadius.circular(10),
                  
                  
              ),
               focusedBorder: OutlineInputBorder(
                 
                  borderSide: const BorderSide(width: 1, ),
                  borderRadius: BorderRadius.circular(10),
            ),
            
            ),),
          SizedBox(
            height: 20,
          ),
           ElevatedButton(
            
            style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              minimumSize: Size(105, 45),
              primary: Color.fromARGB(255, 41, 52, 98),
            ),
               
            onPressed: (){
  //              Navigator.push(
  //   context,
  //   MaterialPageRoute(builder: (context) => const bodypart()),
  // );
  //  Navigator.pop(context);
              
            }, child: Text("Submit",style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 20),))
          
          
          ],
        )
          
      
      ),
    ));
  }
}