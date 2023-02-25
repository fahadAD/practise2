import 'dart:js';

import 'package:flutter/material.dart';
class Constance{
  PreferredSizeWidget newAPPbar(String tittle){
    return AppBar(
      backgroundColor: Colors.black,
      leading: Icon(Icons.account_box,color: Colors.white,size: 30),
      title: Text(tittle,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
      centerTitle: true,
    actions: [ IconButton(
      icon: const Icon(Icons.shopping_cart,color: Colors.white,size: 30),
      tooltip: 'Open shopping cart',
      onPressed: () {
        // handle the press
      },
    ),],
    );
  }
  Color colors1=Colors.green;

}