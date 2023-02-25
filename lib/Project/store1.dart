import 'package:flutter/material.dart';
Widget buildGridView() {
  return GridView.builder(

      itemCount: 7,
      primary: false,
      shrinkWrap: true,
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,

      ),

      itemBuilder: (context ,index){

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdD0OayHcOegpF1le9OY7y-kZavWr36rloweP0Y2CtaCmrefJuHiAo6KujwOYv_OyFH5M&usqp=CAU",
            height: 250,
            width: 350,
            fit: BoxFit.fill,
          ),
        );
      });
}
