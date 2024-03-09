import 'package:digicommunity/Features/Introductory/Presentation/Screens/SoloTution.dart';
import 'package:flutter/material.dart';

import '../../Widgets/services.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:Center(
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Digi Community",style: TextStyle(
                fontSize: 23
              ),),
              SizedBox(height: 20,),
              Text("Finish Setting up your Institute"),
              SizedBox(height: 10,),
              Text("Step 1/2"),
              SizedBox(height: 10,),

              // =======services widgtes =========
              servicesWidgets(context,"Solo Tution",SoloTutionLanding()),
              servicesWidgets(context,"Multiple Partners",SoloTutionLanding()),
              servicesWidgets(context,"Institue",SoloTutionLanding()),
              // Container(
              //   width: 150,
              //   height: 150,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(25),
              //     border: Border.all(
              //       color: Colors.grey,width: 1.1
              //     )
              //   ),
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Text("Solo Tution",style: TextStyle(
              //         fontWeight: FontWeight.bold
              //       ),),
              //       SizedBox(height: 20,),
              //       ElevatedButton(style: ButtonStyle(
              //         backgroundColor: MaterialStatePropertyAll(Colors.black),foregroundColor: MaterialStatePropertyAll(Colors.white)
              //       ),onPressed: (){}, child:Icon(Icons.arrow_forward))
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      )),
    );
  }
}
