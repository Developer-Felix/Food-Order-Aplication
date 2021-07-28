import 'package:flutter/material.dart';
import 'package:moonlightstore/models/products.dart';
import 'package:moonlightstore/widgets/title.dart';

import '../commons.dart';



List<Product> featuredproductList = [
    Product(image: "m2.jpg",price: "200",name: "fish",rating: 4.5,vendor: "Good Food",wishlist: true),
    Product(image: "m3.jpg",price: "150",name: "Kale",rating: 3.9,vendor: "Good Food",wishlist: false),
    Product(image: "m4.jpg",price: "100",name: "Burger",rating: 2.7,vendor: "Good Food",wishlist: false),
    Product(image: "m5.jpg",price: "300",name: "Snacks",rating: 3.7,vendor: "Good Food",wishlist: true),

];
class FeaturedProducts extends StatelessWidget {
  const FeaturedProducts({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             height: 240,
             child: ListView.builder(
               scrollDirection: Axis.horizontal,
               itemCount: featuredproductList.length,
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
                            Image.asset("images/${featuredproductList[index].image}",height: 140,width: 140,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CustomText(text: "${featuredproductList[index].name}", size: 16),
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
                                    child: featuredproductList[index].wishlist ? Icon(Icons.favorite,size: 16,color: red,) : Icon(Icons.favorite_border,size: 16,color: red,),
                                    // child:  Icon(Icons.favorite_border,size: 16,color: red,),
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
                                      child: CustomText(text: "${featuredproductList[index].rating}", size: 14,color: grey,),
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
                                  child: CustomText(text: "Sh.${featuredproductList[index].price}", size: 16,weight: FontWeight.bold,),
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
         );
          
  }
}