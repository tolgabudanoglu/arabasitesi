

import 'package:flutter/material.dart';

class CategoryPage  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Padding(padding: const EdgeInsets.symmetric(horizontal: 16),child: Column(
        children: [  SizedBox(height: 20),

          Text("Kategoriler",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 24,color: Colors.indigo),),


          SizedBox(height: 16,),

          Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(6),color: Colors.black) ,)
        ],


      ),





          ),
        ],),
      ),
    );
  }
}
