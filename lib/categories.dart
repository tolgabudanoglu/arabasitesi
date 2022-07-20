

import 'package:arabasitesi/components/buttonNvaigation.dart';
import 'package:flutter/material.dart';

import 'category.dart';

class CategoriesPage extends StatelessWidget {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView(children: [

              SizedBox(height: 20),
              
              Text("Kategoriler",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 24,color: Colors.indigo),),


              SizedBox(height: 16,),

             kategoriFonk(title: 'all',widget: CategoryPage(),context: context),
              kategoriFonk(title: 'arabalar'),
              kategoriFonk(title: 'motorlar'),
              kategoriFonk(title: 'yarış arabalrı'),








            ],),

          ),
          buttonNvaigation(),

        ],

        ),
      ),
    );
  }
}


kategoriFonk({required String title,Widget? widget,BuildContext? context}){
  return GestureDetector(
    onTap: (){
      Navigator.push(context!, MaterialPageRoute(builder: (context){
        return widget!;
      }));
    },
    child: Container(padding:EdgeInsets.all(24),margin:EdgeInsets.only(bottom: 40),width:double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),color: Colors.white
    ),
      child: Text(title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.indigo),),),
  );

}
