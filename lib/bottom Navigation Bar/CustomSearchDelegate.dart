import 'package:flutter/material.dart';

class Searsh extends StatelessWidget {
  const Searsh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffDAD3C8),
          leading: Text(""),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: Searsh1(),
                );
              },
            ),
          ]),
      body: ListView(children: []),
    );
  }
}

class Searsh1 extends SearchDelegate {
  List<String> SearchTerms = [
    'BEDROOM',
    'LIVING ROOM',
    'KITCHEN',
    'DINING',
    'BATHROOM',
    'FRAGRANCES',
    'KIDS'
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var furnitures in SearchTerms) {
      if (furnitures.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(furnitures);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var furnitures in SearchTerms) {
      if (furnitures.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(furnitures);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
