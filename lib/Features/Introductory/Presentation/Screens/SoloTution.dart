import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Dashboard/Screens/dashboard.dart';
import '../../Widgets/textfileds.dart';
import 'package:file_picker/file_picker.dart';

class SoloTutionLanding extends StatefulWidget {
  const SoloTutionLanding({super.key});

  @override
  State<SoloTutionLanding> createState() => _SoloTutionLandingState();
}

class _SoloTutionLandingState extends State<SoloTutionLanding> {
  List <String> l1 = ["Science","Commerce","Secondary School","Primary School"];
  String selectedValue  = "Science";

  void _selectFile() async{
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      File file = File(result.files.single.path!);
    } else {
      // User canceled the picker
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(child: Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text("Digi Community",style: TextStyle(
                fontSize: 23
            ),),
            SizedBox(height: 20,),
            Text("Finish Setting up your Institute"),
            SizedBox(height: 10,),
            Text("Step 2/2"),
            SizedBox(height: 10,),
            textFields(context,"Institute Name"),
            textFields(context,"Owner"),
            textFields(context,"Address"),
            textFields(context,"Phone Number"),
            SizedBox(height: 30,),
            InkWell(
              onTap: (){
                _selectFile();
              },
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.green,width: 0.5
                  ),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("Choose Institue Logo"),
                      SizedBox(height: 10,),
                      Icon(Icons.cloud_upload),
              
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
        
            Container(
              width: 200,
              child: DropdownButton<String>(hint:Text("sd"),value: "$selectedValue",items: l1.map((String location) {
                  return new DropdownMenuItem<String>(
                  child: new Text(location),
        
                  value: location,
                  );
                  }).toList(), onChanged: (value) {
                       selectedValue = value!;
                       setState(() {
        
                       });
                  },),
            ),
            SizedBox(height: 15,),
            ElevatedButton(style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.black),foregroundColor: MaterialStatePropertyAll(Colors.white)
            ),onPressed: (){
              // pop untill will be used
              Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard(),));
            }, child: Text("Begin"))
          ],
        ),
      ),
    )),
    );
  }
}
