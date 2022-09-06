import 'package:flutter/material.dart';


class hostel extends StatefulWidget {
  const hostel({Key? key}) : super(key: key);

  @override
  State<hostel> createState() => _hostelState();
}

class _hostelState extends State<hostel> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 41, 52, 98),
        title: Text("Hostel Details"),
      ),
      body: SingleChildScrollView(
       child: Container(
         margin: EdgeInsets.fromLTRB(30, 10, 10, 0),

       height: 850,
       width: 300,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            // padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
               borderRadius: BorderRadius.all(Radius.circular(8.0)),
               color: Colors.amber,
            ),
            height: 200,
            width: 250,
            
             child: 
             Image.asset("assets/hostels.jpg", fit: BoxFit.fill,
             
             height: 200,
       width: 200,)
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
               
              hintText: "Address",
              
              
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
               
              hintText: "Mobile No",
              
              
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
               
              hintText: "Room No",
              
              
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
               
              hintText: "Hostel Phone No",
              
              
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
               
              hintText: "Hostel Incharge name",
              
              
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
               
              hintText: "Hostel Fees",
              
              
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
               
              hintText: "Hostel Address",
              
              
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
    ); 
  }
}