import 'package:contact_app/features/contacts/presentation/widgets/contact_cards.dart';
import 'package:flutter/material.dart';
class ContactSearchDelegate extends SearchDelegate<String>{

  List<String> name;
  List<String> contacts;
  ContactSearchDelegate(this.name,this.contacts);

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: (){
          query='';

        },
        icon: Icon(Icons.clear),
      ),
    ];
    }



  @override
  Widget? buildLeading(BuildContext context) {
  return IconButton(
    icon: const Icon(Icons.arrow_back),
    onPressed: () {

      close(context, '');
    });

  }

  @override
  Widget buildResults(BuildContext context) {
 return searchResultList();

  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return searchResultList();
  }

  @override
  Widget searchResultList(){
    final resultList = query.isEmpty
        ? []
        :name.where((element) => element.toLowerCase().contains(query.toLowerCase())).toList();
    return  ListView.builder
      (
        itemCount:resultList.length,
        itemBuilder:(context, index){

          String currentName = resultList[index];
          String contactNumber = contacts[name.indexOf(currentName)];

          return ContactCards(currentName, contactNumber);
          return Text(resultList[index].name);
        }

    );
    ;
  }



}