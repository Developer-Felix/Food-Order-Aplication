import 'package:flutter/material.dart';
import 'package:moonlightstore/commons.dart';

class CustomText extends StatelessWidget {
  final text;
 final double size;
  final  color;
  final  weight;
  const CustomText({ Key? key,@required this.text,required this.size,this.color,this.weight }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize: size ,color: color ?? black,fontWeight: weight ?? FontWeight.normal),);
  }
}