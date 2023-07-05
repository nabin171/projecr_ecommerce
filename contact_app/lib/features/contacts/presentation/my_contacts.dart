import 'package:contact_app/features/contacts/data/contacts.dart';
import 'package:contact_app/features/contacts/presentation/contact_search_delegate.dart';
import 'package:contact_app/features/contacts/presentation/widgets/contact_cards.dart';
import 'package:flutter/material.dart';

class MyContacts extends StatelessWidget {
   MyContacts({super.key});


List<Contacts> frnDetails=[
Contacts("Nabin karki","9862276291"),
  Contacts("rabin karki","9862276291"),
  Contacts("kinjlak karki","9862276291"),
  Contacts("Nram karki","9862276291"),
  Contacts("Nbin karki","9862276291"),
  Contacts("Nin karki","9862276291"),
  Contacts("Nout karki","9862276291"),
  Contacts("Noo karki","9862276291"),
  Contacts("Naa karki","9862276291"),
  Contacts("Nii karki","9862276291")

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
        actions: [
          IconButton(onPressed: (){
            showSearch(context: context, delegate: ContactSearchDelegate(
              frnDetails.map((e) =>e.name).toList(),
              frnDetails.map((e)=>e.phoneNumber).toList(),
            ));
          }, icon:Icon( Icons.search)),

        ],
      ),
      body: ListView.builder
        (
          itemCount:frnDetails.length,
          itemBuilder:(context, index){
            return ContactCards(frnDetails[index].name,frnDetails[index]. phoneNumber);

      }

      ),


    );
  }
}
