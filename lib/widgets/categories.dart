import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:moonlightstore/models/category.dart';
import 'package:moonlightstore/widgets/title.dart';
import '../commons.dart';

List<CategogySet> categoriesList = [
  CategogySet(name:"Salad",image:"m10.jpg"),
   CategogySet(name:"Rice",image:"m2.jpg"),
    CategogySet(name:"Burger",image:"m3.jpg"),
     CategogySet(name:"Chips",image:"m4.jpg"),
      CategogySet(name:"Ndengu",image:"m5.jpg"),
       CategogySet(name:"Snacks",image:"m6.jpg"),
        CategogySet(name:"Nail",image:"m7.jpg"),
         CategogySet(name:"Yummin",image:"m8.jpg"),
         CategogySet(name:"Beer",image:"m9.jpg"),

];

class Categories extends StatelessWidget {
  const Categories({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
            height: 95,
           child: ListView.builder(
             scrollDirection: Axis.horizontal,
             itemCount: categoriesList.length,
             itemBuilder: (_,index){
               return Padding(
              padding: const EdgeInsets.all(8.0),
              child:  Column(
              children: [
                Container(
                  decoration:BoxDecoration(
                       color: white,
                       boxShadow: [
                            BoxShadow(
                               color: Colors.red.shade50,
                               offset: Offset(4,6),
                               blurRadius: 20
                     )
                   ]
                 ),
                 child: Padding(
                   padding: const EdgeInsets.all(4),
                   child: Image.asset("images/${categoriesList[index].image}",width: 60,),
                   
                   )

                ),
                
                SizedBox(height: 10,),

                CustomText(text: "${categoriesList[index].name}", size: 14 ,color: black)

              ],
            ),
          
              );
         
             },
               
             ),
          );
  }
}