// import 'package:digital_card/card_design.dart';
// import 'package:flutter/material.dart';
//
//
// void main(){
//   runApp(MyDigitalCard());
// }
//
//
// class MyDigitalCard extends StatelessWidget {
//   const MyDigitalCard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(primarySwatch: Colors.lightBlue),
//     home:CardDesign()
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:my_contact/features/contacts/presentation/my_contacts.dart';

void main() {
  runApp(const MyContacts());
}

class MyContacts extends StatelessWidget {
  const MyContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyContactsDesign());
  }
}