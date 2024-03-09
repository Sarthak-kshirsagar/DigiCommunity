import 'package:flutter/material.dart';

Widget textFields(BuildContext context,label){
  return Column(
    children: [
      Container(
        width:MediaQuery.of(context).size.width-50,
        child: TextField(

          decoration: InputDecoration(
              label: Text("$label"),

              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.grey,width: 0.7)
              ),

              prefixIcon: Container(
                width:80,
                child: Row(
                  children: [

                    Container(
                      color: Colors.grey.shade100,
                      width: 50,
                    ),
                    SizedBox(width:5,),
                  ],
                ),
              )
          ),
        ),
      ),
      SizedBox(height: 10,)
    ],
  );
}