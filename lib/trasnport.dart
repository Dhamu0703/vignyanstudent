import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vignyan/navigation.dart';

class transport extends StatefulWidget {
  const transport({Key? key}) : super(key: key);

  @override
  State<transport> createState() => _transportState();
}

class _transportState extends State<transport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 41, 52, 98),
        title: Text("Transport Details"),
        
      ),
      body: trans(),
    );
  }
}
class trans extends StatefulWidget {
  const trans({Key? key}) : super(key: key);

  @override
  State<trans> createState() => _transState();
}

class _transState extends State<trans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
       child: Container(
         margin: EdgeInsets.fromLTRB(30, 10, 10, 0),

       height: 800,
       width: 300,
      child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),

                  Center(
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        
                        child:Image.asset('assets/sb.jpg',fit: BoxFit.cover,
                        width: 280,
                        )),
                    ),
                  ),

          SizedBox(
            height: 20,
          ),
         TextField(
            
        
            decoration: InputDecoration(
              
               contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
               
              hintText: "student Name",
              
              
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
           TextField(
            
        
            decoration: InputDecoration(
              
               contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
               
              hintText: "Roll No",
              
              
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
           TextField(
            
        
            decoration: InputDecoration(
              
               contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
               
              hintText: "Bus No",
              
              
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
           TextField(
            
        
            decoration: InputDecoration(
              
               contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
               
              hintText: "Pickup Location",
              
              
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
           TextField(
            
        
            decoration: InputDecoration(
              
               contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
               
              hintText: "Buss Fee",
              
              
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
           TextField(
            
        
            decoration: InputDecoration(
              
               contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
               
              hintText: "Pickup Time",
              
              
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
           TextField(
            
        
            decoration: InputDecoration(
              
               contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
               
              hintText: "Driver Name",
              
              
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
           TextField(
            
        
            decoration: InputDecoration(
              
               contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 20),
               
              hintText: "Driver Mobile No",
              
              
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
        ],
      ),
      //  color: Colors.amber,
       ),
       
     ), 
        
      )  );
    
  }
}