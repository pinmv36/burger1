import 'package:flutter/material.dart';

class AppBarScreen extends StatefulWidget {
  const AppBarScreen({Key? key}) : super(key: key);

  @override
  _AppBarScreenState createState() => _AppBarScreenState();
}

class _AppBarScreenState extends State<AppBarScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Center(child: Text("Контент")),
          appBar: AppBar(
            title: const Text("Демо AppBar"),
            actions:[
              IconButton(onPressed: (){}, icon: Icon (Icons.bathtub_outlined)),
              IconButton(onPressed: (){}, icon: Icon (Icons.ten_k_rounded)),
              TextButton(
                  onPressed: (){},
                  child: const Text("Профиль"),style: ButtonStyle(
                //backgroundColor: MaterialStateProperty.all<Color>(Colors.black38),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
                 ),
            ]
          ),
      ),
    );
  }
}
