import 'dart:async';

import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:untitled14/Project/page5.dart';
import 'package:untitled14/Project/store.dart';
import 'package:untitled14/Project/store1.dart';
class Ecommerce extends StatefulWidget {
  const Ecommerce({Key? key}) : super(key: key);

  @override
  State<Ecommerce> createState() => _EcommerceState();
}

class _EcommerceState extends State<Ecommerce> {

  final listss=[
    "Home","page","style","sami","fahad","abbu","ammu","uncale","ccn"
  ];
  int select=3;

  int pageIndex=0;
  Timer? timer;

PageController pageController=PageController();

@override
  void initState() {
    timer=Timer.periodic(Duration(seconds: 2), (timer) {
      if(pageIndex<=4){
        pageIndex++;
      }else{
        pageIndex=0;
      }
      pageController.animateToPage(pageIndex, duration: Duration(milliseconds: 350), curve: Curves.easeIn);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _demo=[
      Image.network("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80",
        height: 200,
        width: 350,
        fit: BoxFit.fill,
      ),
      Image.network("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80",
        height: 200,
        width: 350,
        fit: BoxFit.fill,
      ),
      Image.network("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80",
        height: 200,
        width: 350,
        fit: BoxFit.fill,
      ),
      Image.network("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tJTIwcGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80",
        height: 200,
        width: 350,
        fit: BoxFit.fill,
      ),
    ];
    return Scaffold(
      appBar: Constance().newAPPbar("E-Ecommerce"),

      body: SingleChildScrollView(
        child: Column(
          children: [

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [

                  Container(
                   height: 60,
                   width: 300,
                   decoration: BoxDecoration(
                     color: Colors.lightGreenAccent,
                     borderRadius: BorderRadius.circular(15)


                   ),
                   child: TextFormField(
                     onTap: (){
                       showSearch(
                           context: context,
                           delegate: MySearchDelegate()
                       );
                     },
                     decoration: InputDecoration(
                       enabledBorder: InputBorder.none,
                       focusedBorder: InputBorder.none,
                       contentPadding: EdgeInsets.all(10),

                     ),

                   ),
                 ),

                 Stack(
                   clipBehavior: Clip.antiAlias,
                   children: [
                     Container(
                       width: 60,
                       height: 60,
                       decoration: BoxDecoration(
                         color: Colors.black,
                         shape: BoxShape.circle,

                       ),
                       child: IconButton(onPressed: (){}, icon: Icon(Icons.notification_important,color: Colors.white,)),
                     ),

                     Positioned(
                       right: 0,
                       child: Container(
                         height: 25,
                         width: 25,
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           color: Colors.green
                         ),
                         child: Center(child: Text("6",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))),
                       ),
                     )
                   ],
                 )

               ],
             ),
           ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

                height: 200,
                width: MediaQuery.of(context).size.width,
                child: PageView(
                 controller: pageController,
          scrollDirection: Axis.horizontal,
                  children: _demo,

                  onPageChanged: (index){
                    setState(() {
                      pageIndex=index;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20,),
            CarouselIndicator(
              color: Colors.orange,
              activeColor: Colors.lightGreenAccent,
              count: _demo.length,
              index: pageIndex,
            ),
            SizedBox(height: 20,),


               SizedBox(

                 height: 100,
                 child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   primary: false,
                   shrinkWrap: true,
                   itemCount: listss.length,

                   itemBuilder: (BuildContext context, int index) {

                   return GestureDetector(
                     onTap: (){
                      setState(() {
                        select=index;
                      });
                     },
                     child: Container(
                       width: 100,
                       height: 100,
                       decoration: BoxDecoration(
                         color: select==index?Colors.black:Colors.green,
                         shape: BoxShape.circle
                       ),
                       child: Center(child: Text(listss[index],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white))),

                     ),
                   );

                 },

                 ),
               ),


                 buildGridView(),



          ],
        ),
      ),

    );

  }

}
