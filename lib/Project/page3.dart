import 'package:flutter/material.dart';
import 'package:untitled14/Project/page5.dart';
class Lists extends StatefulWidget {
  const Lists({Key? key}) : super(key: key);

  @override
  State<Lists> createState() => _ListsState();
}

class _ListsState extends State<Lists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Constance().newAPPbar("Cart-Lists"),


body: Secons(),

    );
  }
}
class Secons extends StatefulWidget {
  const Secons({Key? key}) : super(key: key);

  @override
  State<Secons> createState() => _SeconsState();
}

class _SeconsState extends State<Secons> {
  List lists=[];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,

      itemBuilder: (BuildContext context, int index) {
lists.add(0);
      return Row(
        children: [

          CircleAvatar(
            backgroundColor: Colors.green,
          ),
          Column(
            children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text("Product name",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25)),
               ),
              Text("Price=45\$",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25)),

            ],
          ),

          Column(
            children: [
              IconButton(onPressed: (){ setState(() {
                lists[index]++;
              });   }, icon: Icon(Icons.add_box_outlined)),
              Text(lists[index].toString()),
              IconButton(onPressed: (){setState(() {
                lists[index]--;
              });}, icon: Icon(Icons.minimize_outlined)),
            ],
          )

        ],
      );
    },

    );
  }
}
