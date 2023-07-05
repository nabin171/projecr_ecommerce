import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'core/constants/app_images.dart';
import 'core/constants/app_styles.dart';
import 'core/constants/app_strings.dart';

class CardDesign extends StatelessWidget {
   CardDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My id card"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(AppImages.spiral),
            ),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(AppImages.signature),
            ),
            cardDesignRow(field: Strings.name,fieldValue: Strings.myName),
            SizedBox(height:40),

            SizedBox(height:40),
        cardDesignRow(field: Strings.rollNo,fieldValue: Strings.myRollNo),

            SizedBox(height:40),
            cardDesignRow(field: Strings.email,fieldValue: Strings.myEmail) ,
            SizedBox(height:40),
            cardDesignRow(field: Strings.idNo,fieldValue: Strings.myIdNo),
          ],
        ));

  }
  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
callToNumber({required String url}) async{

    try{
      launchUrl(Uri.parse(url));
    }
    catch(e){
      print("Could not launch url");
    }
}



  //var mainHeading=TextStyle(fontSize : 24, color : Colors.red)
  //dynamic mainHeading=TextStyle(fontSize : 24, color : Colors.red)

cardDesignRow({ required String field, required String fieldValue}){
    return    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          field,
          style:AppStyles.mainHeading ,
        ),

        Text(fieldValue,
          style:AppStyles.subTitle,
        ),
      ],
    );
}
}
