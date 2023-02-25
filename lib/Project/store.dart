import 'package:flutter/material.dart';
class MySearchDelegate extends SearchDelegate{
  final lists=[
    "111111111111","222222222","33333333","4444444444444",
    "555555555","6666666666","777777777","111111111111","222222222","33333333","4444444444444",
    "555555555","6666666666","777777777",
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    var data=query.isEmpty? lists:lists.where((element) => element.startsWith(query)).toList();
    
      return data.isNotEmpty?
       ListView.builder(itemBuilder: (BuildContext context, int index) {

       return  ListTile(
         leading: Icon(Icons.account_box),
         title: Text(data[index],style: TextStyle(color: Colors.red)),
         trailing: Icon(Icons.call),
       );
    },

    ):Center(child: Text("data not found"));
  }
  
}