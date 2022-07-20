

import 'package:arabasitesi/categories.dart';
import 'package:arabasitesi/components/buttonNvaigation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child:Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  baslikFonk(),


                  Padding(padding: EdgeInsets.only(top: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        butonFonk(text: 'kategoriler', icon: Icons.menu,widget: CategoriesPage(),context: context),
                        butonFonk(text: 'Favoriler', icon: Icons.add_alert_rounded),
                        butonFonk(text: 'indirimler', icon: Icons.add_alarm),
                        butonFonk(text: 'Çok satanlar', icon: Icons.add_business),

                      ],
                    ),),

                  SizedBox(height: 50,),

                  Text('Öne Çıkanlar',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black)),
                  SizedBox(height: 12),

                  Row(
                    children: [
                      onceCikanlar(text: "Yarış Arabası", photoUrl: "assets/images/car1.png", price: "46546546 TL"),
                      onceCikanlar(text: "Yarış Arabası", photoUrl: "assets/images/car1.png", price: "46546546 TL"),
                    ],
                  ),




                ],
              ),
            ),
            
           buttonNvaigation(),
          ],
        ),








      ),
    );

  }
}

baslikFonk(){
  return Padding(

    padding: const EdgeInsets.only(top: 20),


    child: Text(


      'home',style: TextStyle (fontSize: 32,color: Colors.black,fontWeight: FontWeight.bold),

    ),
  );
}
butonFonk({required String text,required IconData icon,  Widget? widget, BuildContext? context}){
  return     GestureDetector(
    onTap: (){
      Navigator.push(context!, MaterialPageRoute(builder: (context){
        return widget!;
      }));
    },
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 19,vertical: 22),
          decoration: BoxDecoration(shape:BoxShape.circle,color: Colors.indigo ),
          child: Icon(icon ,color: Colors.pink,size: 18,),

        ),
        Text(text,style: TextStyle(color: Colors.indigo),),
      ],
    ),
  );

}
onceCikanlar({required String text,required String photoUrl, required String price}){
  return  Container(
    padding: EdgeInsets.only(left: 12,top: 12,bottom: 21),
    child: Column(children: [
      //15500
      Text( text,style: TextStyle(fontSize: 18,color: Colors.black)),
      SizedBox(height: 22),

      Image.asset(photoUrl),
      SizedBox(height: 22),

      Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color: Colors.lightBlue),
        child:Text(price,style: TextStyle(fontSize:18,color: Colors.black),
        ),
      ),



    ],),
  );
}


