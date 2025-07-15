import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Personal Profile",style: 
          TextStyle(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            color: Colors.white70,
          ),),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),

        body: Padding(
          padding: EdgeInsets.only(top: 40.0),
          child:Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/avatar.png'),

                ),
                SizedBox(height: 20,),
                Text("John Doe",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.blueGrey,
                  
                  ),
                ),
                Text('Flutter Devs',
                  style: TextStyle(
                  color: Colors.grey[700]),
                ),
                SizedBox(height: 20,),
                Divider(
                  thickness: 3,
                  color: Colors.grey[700],
                  indent: 20,
                  endIndent: 20,
                  height: 5
                ),

                SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email, color: Colors.redAccent),
                    SizedBox(width: 10),
                    Text('john@gmail.com'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone_iphone, color: Colors.blueAccent),
                    SizedBox(width: 10),
                    Text('+254 712 37891'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on_outlined, color: Colors.red),
                    SizedBox(width: 10),
                    Text('Nairobi, Kenya'),
                  ],
                ),

              ],
                
            )              
          )
      
          ),
        ),
      );
      
    
  }
}