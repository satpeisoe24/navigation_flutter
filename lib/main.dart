//import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  //runApp(MaterialApp(home:FirstPage()));
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/':(context) => FirstScreen(),
      '/second':(context) => SecondScreen(),
    }
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
    );
     
  }
}


class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation"),),
      body: Center(child: RaisedButton(  
        onPressed: (){
          Navigator.push(                                       //push go to second page
            context,
           MaterialPageRoute(builder: (context) => SecondPage(),)
           );
        },
        child: Text("Go to Second Page"),
      ),),
    );
  }
}

class  SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: RaisedButton( 
        onPressed: (){
          Navigator.pop(context);         //pop  is back page
        },
        child: Text("back to first Page"),
      ),),
      
    );
  }
}


class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation"),),
      body: Center(child: RaisedButton(  
        onPressed: (){
          Navigator.pushNamed(context, '/second');
          // Navigator.push(                                       //push go to second page
          //   context,
          //  MaterialPageRoute(builder: (context) => SecondPage(),)
          //  );
        },
        child: Text("Go to Second Screen"),
      ),),
    );
  }
}

class  SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: RaisedButton( 
        onPressed: (){
          Navigator.pop(context);         //pop  is back page
        },
        child: Text("back to first Screen"),
      ),),
      
    );
  }
}