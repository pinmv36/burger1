

import 'package:burger1/globalTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThevesDemoApp extends StatelessWidget {
  const ThevesDemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:globalTheme(),
      home: ThemesDemoScreen(),
    );
  }
}


class ThemesDemoScreen extends StatefulWidget {
  const ThemesDemoScreen({Key? key}) : super(key: key);

  @override
  _ThemesDemoScreenState createState() => _ThemesDemoScreenState();
}

class _ThemesDemoScreenState extends State<ThemesDemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: const Text("Демо AppBar"),
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
          ]),
      drawer: Drawer(
          child: ListView(
              padding: EdgeInsets.zero,
              children:[
                DrawerHeader(
                    decoration: const BoxDecoration(
                      color:Colors.blue,
                    ),
                    child:Container(
                      height:300,
                      child:Column(
                        children:[
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(150.0)),
                            ),
                            child:Image.network('https://avatars.mds.yandex.net/i?id=11043dae38c13b14e761276694972c2d-4383701-images-thumbs&n=13'),),
                          const Text('Навигация на Flutter!'),
                        ],
                      ),
                    )
                ),
                ListTile(
                  leading: const Icon(Icons.one_k),
                  title:const Text('Каталог'),
                  onTap: (){},
                ),
                Divider(),
                ListTile(
                  leading: const Icon(Icons.ac_unit),
                  title:const Text('Корзина'),
                  onTap: (){},
                )
              ]
          )

      ),
      body: Container(
          color:Theme.of(context).colorScheme.secondary,
        child: Center(child: Text('содержимое окна',style:Theme.of(context).textTheme.headline4)),
    ),
    );
  }
}

