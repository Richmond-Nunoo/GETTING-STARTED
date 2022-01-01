import 'dart:developer';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

increment(){
  setState(() {
    _counter++;
  });

}

deduct(){
  setState(() {
    _counter--;
  });

}
reset(){
  setState(() {
    _counter =0;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Add Minus And Reset Counter"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
      Text('$_counter',
        style: TextStyle(fontSize: 80,),
        ),
  const      SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         FloatingActionButton(
            onPressed: increment,
            child:const Icon(Icons.add),
            tooltip: 'increment',
            ),
  const          SizedBox(width: 20,),
            FloatingActionButton(
            onPressed:deduct,
            child:const Icon(Icons.remove),
            tooltip: 'deduct',
            ),
        ],),
        ],
      ),),
      floatingActionButton: FloatingActionButton(
        onPressed: reset,
        tooltip: 'Reset the counter',
        child:const Icon(Icons.refresh),
      ),
    );
  }
}