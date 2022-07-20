import 'package:flutter/material.dart';


Widget buttonNvaigation(){
 return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      width: double.infinity,
      padding:EdgeInsets.symmetric(vertical: 20),
      color: Colors.lightBlue,child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        homeIcon(iconData:Icons.home_filled),
        homeIcon(iconData:Icons.search),
        homeIcon(iconData:Icons.shopping_basket),
        homeIcon(iconData:Icons.person),
      ],),
    ),
  );

}

homeIcon({required IconData iconData}){
  return Icon(iconData,
    size: 20,color: Colors.black,);
}