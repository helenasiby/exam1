import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color _containerColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Color Picker",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              setState(() {
                      _containerColor = Colors.red; 
              });
             
            }, child: Text("RED")),
            ElevatedButton(onPressed: () {
              setState(() {
                      _containerColor = Colors.green; 
               });
            }, child: Text("GREEN")),
            ElevatedButton(onPressed: () {
              setState(() {
                      _containerColor = Colors.blue; 
               });
            }, child: Text("BLUE")),
            ElevatedButton(onPressed: () {
             setState(() {
                      _containerColor = Colors.yellow; 
                    });
            }, child: Text("YELLOW")),
            ElevatedButton(onPressed: () {
             setState(() {
                      _containerColor = Colors.orange; 
                  });
            }, child: Text("ORANGE")),
             Container(
                height: 300,
                width: 300,
                color: _containerColor,
              ),
          ],
        ),
      ),
    );
  }
}