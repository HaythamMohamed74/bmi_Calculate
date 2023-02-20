import 'dart:math';

import 'package:bmi_calculat/result.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
bool ismale=true;
int weight=50;
int age=18;
double height=120.0;
  // const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("Bmi Calculator",style: TextStyle(color: Colors.black),) ,
        ),
        backgroundColor: const Color.fromARGB(255, 3, 21, 36),
        body:

           Column(
             children: [
               Expanded(
                 child: Row(
                   children: [
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: GestureDetector(
                         onTap: (){
                         setState(() {
                       ismale=true;
                         });
                         },
                         child: Container(
                           decoration: BoxDecoration(
                               color:ismale?Colors.yellow:Colors.blueGrey
                               ,borderRadius: BorderRadius.circular(10)
                           )
                           // color: Colors.indigo

                           ,child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                           Image.asset('assets/male.png',width: 100,)
                             ,const SizedBox(height: 25,)

                             ,const Text('Male',style: TextStyle(
                                 fontWeight: FontWeight.bold
                                 ,fontSize: 20
                             ),)
             ],),
                         ),
                       ),
                     ),
                   )
                     ,Expanded(
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: GestureDetector(
                           onTap: (){
                            setState(() {
                         ismale=false;
                            });
                           },
                           child: Container(
                             decoration: BoxDecoration(
                               color:ismale? Colors.blueGrey:Colors.yellow
                               ,borderRadius: BorderRadius.circular(10)
                             ),

                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [

                               Image.asset('assets/female.png',width: 100,)
                                 // ,SizedBox(height: 5,)
                               ,const Text('Female',
                                     style: TextStyle(
                                         fontWeight: FontWeight.bold
                                         ,fontSize: 20
                                     )
                                 )
                             ],),

                           ),
                         ),
                       ),
                     )
                 ],

                 ),
               )
               ,Expanded(
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                      color: Colors.blueGrey
                      ,borderRadius: BorderRadius.circular(10)
                    )
                     ,child: Column(children: [
                       const Text('HEIGHT',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
                       , Text('${height.round()}',style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold))
                       ,Slider(
                       thumbColor: Colors.black,
                       activeColor: Colors.yellow,
                       inactiveColor:Colors.black,
                         value:height,
                         max: 220.0,
                         min: 80.0,
                         onChanged: (value){
                          setState(() {
                            height=value;
                          });
                         } )

                     ],


                     ),
                   ),
                 ),
               )

               ,Expanded(
                 child: Padding(
                   padding: const EdgeInsets.all(1.0),
                   child: Row(
                     children: [
                       Expanded(
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                             decoration: BoxDecoration(
                                 color: Colors.blueGrey,
                                 borderRadius: BorderRadius.circular(15)
                             ),

                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                               const Text('WEIGHT',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
                               ,Text('$weight',style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold))
                                 ,Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                   FloatingActionButton(
                                     heroTag: 'ADD WEIGHT',
                                     backgroundColor: Colors.black54,
                                     onPressed: (){
                                       setState(() {
                                           weight++;
                                       });
                                     }
                                     ,child: const Icon(Icons.add,),

                                   )
                                     ,const SizedBox(width:5)
                                   ,FloatingActionButton(
                                       heroTag: 'MINES WEIGHT',
                                       backgroundColor: Colors.black54,
                                       onPressed: (){
                                      setState(() {
                                        weight--;
                                      });
                                     }
                                     ,child: const Icon(Icons.remove_circle),

                                   )
                                 ],)


                             ],),
                           ),
                         ),
                       )
                       ,Expanded(
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                             decoration: BoxDecoration(
                               color: Colors.blueGrey,
                               borderRadius: BorderRadius.circular(15)
                             ),

                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 const Text('AGE',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
                                 , Text('$age',style:  const TextStyle(fontSize: 30,fontWeight: FontWeight.bold))
                                 ,Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     FloatingActionButton(
                                       heroTag: 'ADD AGE',
                                     backgroundColor: Colors.black54,
                                       onPressed: (){
                                     setState(() {
                                       age++;
                                     });
                                       }
                                       ,child: const Icon(Icons.add,),

                                     )
                                     ,const SizedBox(width:5)
                                     ,FloatingActionButton(
                                       heroTag: 'MINES AGE',
                                       backgroundColor: Colors.black54,
                                       onPressed: (){
                                     setState(() {
                                        age--;
                                     });
                                       }
                                       ,child: const Icon(Icons.remove_circle),

                                     )
                                   ],)

                               ],),
                           ),
                         ),
                       )

                     ],


                   ),
                 ),
               )
               ,SizedBox(
                 // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                   width: double.infinity,

                   child: MaterialButton(onPressed: (){
                     double result=weight/pow(height/ 100,2);
                   Navigator.push(context,
                       MaterialPageRoute(
                           builder:(context)=>Result(
                               ismale:ismale ,
                               result: result,
                               age: age)

                       ));
                   //   Navigator.pushNamed(context, 'result',);
                   },color: Colors.amberAccent,child: const Text('CALC'),))


             ]

           )

      ),
    );
  }
}
