import 'package:digicommunity/Features/Introductory/Presentation/Screens/SoloTution.dart';
import 'package:flutter/material.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';


Widget servicesWidgets(BuildContext ctx,serviceName,Widget w){
  return  Column(
    children: [
      Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
                color: Colors.grey,width: 1.1
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${serviceName}",style: TextStyle(
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 20,),
            ElevatedButton(style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black),foregroundColor: MaterialStatePropertyAll(Colors.white)
            ),onPressed: (){
              Navigator.push(ctx ,SwipeablePageRoute(builder: (context) => SoloTutionLanding(),));
            }, child:Icon(Icons.arrow_forward))
          ],
        ),
      ),
      SizedBox(height:20,)
    ],
  );
}