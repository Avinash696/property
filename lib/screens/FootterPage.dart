import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FootterPage extends StatelessWidget {
  const FootterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.red,
      color: Colors.white,
      elevation: 9,
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Properties Served",style: TextStyle(fontWeight: FontWeight.bold)),
            Text("Types of Residential Properties",style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              child: Row(
                children: [
                  Icon(Icons.check_circle_outline_outlined,color: Colors.green),
                  Text("Agricultural",style: TextStyle(fontWeight: FontWeight.normal)),
                ],
              ),
            ),
            SizedBox(
                child:Row(
                  children: [
                    Icon(Icons.check_circle_outline_outlined,color: Colors.green,),
                    Text("Paying Guest",style: TextStyle(fontWeight: FontWeight.normal)),
                  ],
                )
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.check_circle_outline_outlined,color: Colors.green,),
                      Text("Residential",style: TextStyle(fontWeight: FontWeight.normal)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.check_circle_outline_outlined,color: Colors.green,),
                      Text("Plot",style: TextStyle(fontWeight: FontWeight.normal)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.check_circle_outline_outlined,color: Colors.green,),
                      Text("Rental",style: TextStyle(fontWeight: FontWeight.normal)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.check_circle_outline_outlined,color: Colors.green,),
                      Text("Commercial",style: TextStyle(fontWeight: FontWeight.normal)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
                child:Row(
                  children: [
                    Icon(Icons.check_circle_outline_outlined,color: Colors.green,),
                    Text("Residential Plot",style: TextStyle(fontWeight: FontWeight.normal)),
                  ],
                )
            ),
          ],
        ),
      ],),
    );
  }
}
