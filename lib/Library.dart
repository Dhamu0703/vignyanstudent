import 'package:flutter/material.dart';

class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 41, 52, 98),
       title: Text("Library",style: TextStyle(
         fontWeight: FontWeight.bold,fontSize: 25,
       ),),
      ),
       body: SafeArea(child: 
      SingleChildScrollView(
        
          child: Container(
         margin: EdgeInsets.fromLTRB(30, 10, 10, 0),
       height: 850,
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
                        child:Image.asset('assets/books.jpg',fit: BoxFit.cover,
                        )),
                    ),
                  ),

          SizedBox(
            height: 20,
          ),
         TextField(
    
            
        keyboardType: TextInputType.none,
            decoration: InputDecoration(
                      
               contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
               
              hintText: "student Name",
              
              
              alignLabelWithHint: false,
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1,color: Colors.grey), 
                  
                  borderRadius: BorderRadius.circular(10),
                  
                 
              ),
      
               focusedBorder: OutlineInputBorder(
                 
                  borderSide: const BorderSide(width: 1,color: Colors.grey), 
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
                 
                  borderSide: const BorderSide(width: 1,color: Colors.grey), 
                  borderRadius: BorderRadius.circular(10),
            ),
            
          ),),
           SizedBox(
            height: 20,
          ),
           TextField(
            
        
            decoration: InputDecoration(
              
               contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
               
              hintText: "Library/Member ID",
              
              
              alignLabelWithHint: false,
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1,color: Colors.grey), 
                  borderRadius: BorderRadius.circular(10),
                 
              ),
               focusedBorder: OutlineInputBorder(
                 
                  borderSide: const BorderSide(width: 1,color: Colors.grey), 
                  borderRadius: BorderRadius.circular(10),
            ),
            
          ),),
           SizedBox(
            height: 20,
          ),
           TextField(
            
        
            decoration: InputDecoration(
              
               contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
               
              hintText: "Book Name",
              
              
              alignLabelWithHint: false,
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1,color: Colors.grey), 
                  borderRadius: BorderRadius.circular(10),
                 
              ),
               focusedBorder: OutlineInputBorder(
                 
                  borderSide: const BorderSide(width: 1,color: Colors.grey), 
                  borderRadius: BorderRadius.circular(10),
            ),
            
          ),),
           SizedBox(
            height: 20,
          ),
           TextField(
            
        
            decoration: InputDecoration(
              
               contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
               
              hintText: "Book Issue Date",
              
              
              alignLabelWithHint: false,
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1,color: Colors.grey), 
                  borderRadius: BorderRadius.circular(10),
                 
              ),
               focusedBorder: OutlineInputBorder(
                 
                  borderSide: const BorderSide(width: 1,color: Colors.grey), 
                  borderRadius: BorderRadius.circular(10),
            ),
            
          ),),
           SizedBox(
            height: 20,
          ),
           TextField(
            
        
            decoration: InputDecoration(
              
               contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
               
              hintText: "Book Submitting Date",
              
              
              alignLabelWithHint: false,
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1,color: Colors.grey), 
                  borderRadius: BorderRadius.circular(10),
                 
              ),
               focusedBorder: OutlineInputBorder(
                 
                  borderSide: const BorderSide(width: 1,color: Colors.grey), 
                  borderRadius: BorderRadius.circular(10),
            ),
            
          ),),
           SizedBox(
            height: 20,
          ),
           TextField(
            
        
            decoration: InputDecoration(
              
               contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
               
              hintText: "Fine Amount",
              
              
              alignLabelWithHint: false,
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1,color: Colors.grey), 
                  borderRadius: BorderRadius.circular(10),
                 
              ),
               focusedBorder: OutlineInputBorder(
                 
                  borderSide: const BorderSide(width: 1,color: Colors.grey), 
                  borderRadius: BorderRadius.circular(10),
            ),
            
          ),),
            SizedBox(
            height: 20,
          ),
           TextField(
            
        
            decoration: InputDecoration(
              
               contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 20),
               
              hintText: "Librarian Name",
              
              
              alignLabelWithHint: false,
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1,color: Colors.grey), 
                  borderRadius: BorderRadius.circular(10),
                 
              ),
               focusedBorder: OutlineInputBorder(
                 
                  borderSide: const BorderSide(width: 1,color: Colors.grey), 
                  borderRadius: BorderRadius.circular(10),
            ),
            
          ),),
           SizedBox(
            height: 20,
          ),
           TextField(
            
        
            decoration: InputDecoration(
              
               contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 20),
               
              hintText: "Contact NO",
              
              
              alignLabelWithHint: false,
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1,color: Colors.grey), 
                  borderRadius: BorderRadius.circular(10),
                 
              ),
               focusedBorder: OutlineInputBorder(
                 
                  borderSide: const BorderSide(width: 1,color: Colors.grey), 
                  borderRadius: BorderRadius.circular(10),
            ),
            
          ),),
        ],
      ),
      //  color: Colors.amber,
       ),
    )
    ),
       )
    );
  }
}