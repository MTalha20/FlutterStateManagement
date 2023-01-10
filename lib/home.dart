import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/sharedData.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  bool change = false;

  @override
  
  Widget build(BuildContext context) {
    print('Widget Rebuilding');
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('State Management Provider', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),),
      backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Consumer<userName>(builder: (context, value, child){
            return Text(value.getName().toString(),style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.orange),);      
          }),
          SizedBox(height: 20,),
          Consumer<userName>(builder: (context, value, child){
            return Text(value.getName().toString(),style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue[900]),);      
          }),
          SizedBox(height: 20,),
          MaterialButton(
            color: Colors.green,
            child: Text("Change Name"),
            onPressed: (){
              change = !change;
              var update = Provider.of<userName>(context,listen: false);
              if (change){
                update.updateName("Muhammad Talha Wahid");
              }
              else{
                update.updateName("Muhammad Talha");
              }
            
            })         
        ],)
        ),
      );
  }
  }
  
  
  