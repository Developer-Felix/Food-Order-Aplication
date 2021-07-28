import 'package:flutter/material.dart';
import 'package:moonlightstore/commons.dart';
import 'package:moonlightstore/widgets/categories.dart';
import 'package:moonlightstore/widgets/title.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
        children: [
          //top level functionality in the row way split the notifications and the tesxt
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(text: "What would you like to eat?",size: 18,),
            ),
              Stack(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none)),
                  Positioned(
                    top: 12,
                    right: 12,
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(color: red,borderRadius: BorderRadius.circular(20)),
                    ),
                  )
                ],
              )
            ],
          ),
          
          //split functionality
          SizedBox(height: 10,),

          //Search bar functionality
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
            decoration: BoxDecoration(
              color: white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  offset: Offset(1,1),
                  blurRadius: 4
                  )
              ]
            ),
            child: ListTile(
              leading: Icon(Icons.search, color: red,),
              title: TextField(
                decoration: InputDecoration(
                  hintText: "Find food and restaurent",
                  border: InputBorder.none
                ) ,
                ),
              trailing: Icon(Icons.filter_list,color: red,),
            ),
          ),
            ),
          
          //split functionality
          SizedBox(height: 10,),

          //working on the categories
          Categories(),

          //split functionality
          // SizedBox(height: 0,),

          //Featured products
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomText(text: "Featured Food", size: 20,color: grey,),
          ),
          
          //slide  featured products
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             height: 240,
             child: ListView.builder(
               scrollDirection: Axis.horizontal,
               itemCount: 3,
                itemBuilder: (_,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                       height: 240,
                       width: 200,
                       decoration: BoxDecoration(
                          color: white,
                          boxShadow: [
                               BoxShadow(
                                  color: Colors.grey.shade300,
                                  offset: Offset(15,15),
                                  blurRadius: 30
                    )
                ]
              ),
                        child: Column(
                          children: [
                            Image.asset("images/m2.jpg",height: 140,width: 140,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CustomText(text: "Some food", size: 16),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(30),
                                              color: white,
                                              boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.grey.shade300,
                                                      offset: Offset(1,1),
                                                      blurRadius: 4
                    )
                ]
              ),
                                  child: Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: 
                                       Icon(Icons.favorite_border,size: 16,color: red,),
                                ),
                                ),
                                
                              ],
                            ),
                      
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: CustomText(text: "4.7", size: 14,color: grey,),
                                    ),
                                    SizedBox(width: 2,),
                                    Icon(Icons.star,color: red,size: 16,),
                                    Icon(Icons.star,color: red,size: 16,),
                                    Icon(Icons.star,color: red,size: 16,),
                                    Icon(Icons.star,color: red,size: 16,),
                                    Icon(Icons.star,color: grey,size: 16,),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CustomText(text: "Sh.200", size: 16,weight: FontWeight.bold,),
                                ),
                              ],
                            )
                          ],
                        )

            )
               
                      
                      ); 
                    }
               ),
           ),
         )
          
          ],
      ),
      
      )
    );
  }
}