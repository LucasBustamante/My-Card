import 'package:cartao_de_visita/colors.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(fontFamily: 'Californian'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(child:
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 20),
            child: Image.asset('asset/perfil.png'),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.end,
            children: [
            Text('27 anos',style: TextStyle(color: kTextColor, fontSize: 20,
            fontWeight: FontWeight.w200),),
            Text('Lucas Bustamante', style: TextStyle(color: kTextColor,
                fontSize: 35, fontWeight: FontWeight.w300),)
          ],),
          Text('Desenvolvedor Flutter', style: TextStyle(letterSpacing: 3,
              fontSize: 18,
          color: kTextColor),),
          SizedBox(height: 35, width: 300,
            child: Divider(color: kTextColor,
            thickness: 1,),
          ),
          Card(margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: kSecondaryColor,
              child: ListTile(leading: Icon(
                Icons.phone,color: kPrimaryColor,
              ),
              title: Text('+55 (11) 98026 xxxx', style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, letterSpacing: 2,
                color: kPrimaryColor
              ),),),),
          Card(margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: kSecondaryColor,
            child: ListTile(leading: Icon(
              Icons.email,color: kPrimaryColor,
            ),
              title: Text('lucascostabustamante@gmail.com', style: TextStyle(
                  fontSize: 19, fontWeight: FontWeight.w600,
                  color: kPrimaryColor
              ),),),)
        ],
      )),
    );
  }
}
