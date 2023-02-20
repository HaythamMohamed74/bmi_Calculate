import 'package:bmi_calculat/home.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({Key? key}) : super(key: key);
   bool ismale;
   double ?result;
   int ?age;
   //Constructor
   Result({super.key,
    required this.ismale
    ,required this.result
    , required this.age

});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back),color:Colors.black ,),
        backgroundColor: Colors.amber,
        title: const Text(('RESULT PAGE '),style:TextStyle(color: Colors.black),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Gender : ${ismale ? 'Male' :' Female'}",style: const TextStyle(fontSize: 35),)
            ,Text('RESULT : ${result?.round()}',style: const TextStyle(fontSize: 35),)
            ,Text('AGE : $age',style: const TextStyle(fontSize: 35),)
        ],),
      ),
    );
  }
}
// ' ${ismale?'Male' :'Female'