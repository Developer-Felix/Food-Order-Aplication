import 'package:flutter/material.dart';
import 'package:moonlightstore/commons.dart';
import 'package:moonlightstore/widgets/categories.dart';
import 'package:moonlightstore/widgets/feature_products.dart';
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
            child: CustomText(text: "Featured Products", size: 20,color: grey,),
          ),
          
          //slide  featured products
          FeaturedProducts(),

          //Popular products
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomText(text: "Popular products", size: 20,color: grey,),
          ),
          
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("images/p1.jpg")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Icon(Icons.favorite,color: red,),
                     ),
                     Container(
                       width:  50,
                       decoration: BoxDecoration(color: white),
                     )

                   ],
                ),
              ),
            
            ],
          ),


          ],
      ),
      
      ),
      //bottom navigation area
      bottomNavigationBar: BottomNavigationBar(
        // new
       currentIndex: 0, // new
       items: [
         new BottomNavigationBarItem(
           icon: Icon(Icons.home),
           title: Text('Home'),
         ),
         new BottomNavigationBarItem(
           icon: Icon(Icons.mail),
           title: Text('Messages'),
         ),
         new BottomNavigationBarItem(
           icon: Icon(Icons.person),
           title: Text('Profile')
         )
       ],
     ),
      
      // bottomNavigationBar: Container(
      //   color: white,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Image.asset("images/home.png",width: 26,height: 26,),
      //       ),
      //         Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Image.asset("images/target.png",width: 26,height: 26,),
      //       ),
      //         Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Image.asset("images/shopping-bag.png",width: 26,height: 26,),
      //       ),
      //         Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Image.asset("images/avatar1.png",width: 26,height: 26,),
      //       ) ],
      //   ),
      // ),
   
    );
  }
}