import 'package:flutter/material.dart';

class ListVeiwPage extends StatefulWidget {
  const ListVeiwPage({super.key});

  @override
  State<ListVeiwPage> createState() => _ListVeiwState();
}

class _ListVeiwState extends State<ListVeiwPage> {
  @override
  List<String>states=[
    'Abia',
    'Adamawa',
    'Akwa Ibom',
    'Anambra',
    'Bauchi',
    'Bayelsa',
    'Benue',
    'Borno'
    'Cross River',
    'Ebonyi',
    'Edo',
    'Ekiti',
    'Enugu',
    'Gombe',
    'Imo',
    'Jigawa',
    'Kaduna',
    'Kano',
    'Katsina',
    'Kebbi',
    'Kogi',
    'Kwara',
    'Lagos',
    'Nasarawa',
    'Ogun',
    'Ondo',
    'Osun',
    'Oyo',
    'Plateau',
    'Rivers',
    'Sokoto',
    'Taraba',
    'Yobe',
    'Zamfara',
    'federal Capital Territor',
  
  ];
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.pink,
      title: Text('listviewstate',style: TextStyle(color: Colors.black,fontSize: 25),),
   centerTitle: true,
    ),
    body: SafeArea(child: Padding(padding:  EdgeInsets.all(8.0),
    child: ListView.separated(itemBuilder: (BuildContext context, int index){
      return Container(height: 50,color: Colors.black,
      child: Center(child: Text(states[index],style: TextStyle(color: Colors.white),),),);
    }, separatorBuilder: (BuildContext context, int index){
      return Divider();
    }, itemCount: states.length),
    )),
    );
  }
}
