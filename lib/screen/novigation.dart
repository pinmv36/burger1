import 'package:flutter/material.dart';

class NavigationDrawScreen extends StatefulWidget {
  const NavigationDrawScreen({Key? key}) : super(key: key);

  @override
  _NavigationDrawScreenState createState() => _NavigationDrawScreenState();
}

class _NavigationDrawScreenState extends State<NavigationDrawScreen> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:Scaffold(
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
                  const Text('Навигация на Flutter'),
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
        body: Center(child: Text('содержимое окна')),
      )
    );
  }
}
