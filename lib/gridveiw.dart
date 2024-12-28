import 'package:flutter/material.dart';

class GridVeiwPage extends StatefulWidget {
  const GridVeiwPage({super.key});

  @override
  State<GridVeiwPage> createState() => _GridVeiwPageState();
}

class _GridVeiwPageState extends State<GridVeiwPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.purple,
      title: Text('gridviewstate',style: TextStyle(color: Colors.black,fontSize: 25),),
   centerTitle: true,
    ),body: SafeArea(child: Padding(padding: EdgeInsets.all(8.0),
    child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemCount: 30,
       itemBuilder: (BuildContext context, int index){return Padding(
         padding: const EdgeInsets.all(8.0),
         child: Container(height: 100,color: Colors.black,
               child: FlutterLogo(),
               ),
       );}),
    )),);
  }
}