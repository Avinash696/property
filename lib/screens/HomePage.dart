import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:property/screens/AboutUsPage.dart';
import 'package:property/screens/FootterPage.dart';

import '../Colors.dart';
import '../constant/Constants.dart';
import '../controllers/homePageController.dart';
import 'AgentPage.dart';
import 'MapSample.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  var homeController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              SizedBox(
                child: Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Image.asset("images/logo.png", height: 100),
                      Flexible(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(onTap: () {
                                Get.offAll(HomePage());
                              }, child: Text("HOME")),
                              SizedBox(width: 50),
                              InkWell(onTap: () {
                                Get.to(AgentPage());
                              }, child: Text("AGENTS")),
                              SizedBox(width: 50),
                              InkWell(
                                  onTap: () {
                                    Get.to(AboutUsPage());
                                  }, child: Text("About Us")),
                              SizedBox(width: 50),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
              Divider(),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey
                  )
                ),
                child: RichText(text: TextSpan(children: <TextSpan>[
                  TextSpan(text: "Jankipuram Extension, Lucknow",style: TextStyle(color: Colors.black54)),
                  TextSpan(text :" Opens at 09:00 AM ",
                      style: TextStyle(
                          fontFamily: "assets/fonts/branda.ttf",
                          color: Colors.green,
                          fontSize: 17)),
                  TextSpan(text :"22 Years in Business",
                      style: TextStyle(
                          fontFamily: "assets/fonts/branda.ttf",
                          color: Colors.orange,
                          fontSize: 21)),
                ])),
              ),

              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(Constants.descriptionProperty,
                    style: TextStyle(
                        fontFamily: "Branda",
                        color: Colors.deepPurple,
                        fontSize: 25)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "Nitin Properties, Nahar Road, Jankipuram Extension, Lucknow - 226031",
                    style: TextStyle(
                        fontFamily: "assets/fonts/branda.ttf",
                        color: Colors.black,
                        fontSize: 15)),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "Quick Information",
                    style: TextStyle(
                        fontFamily: "assets/fonts/branda.ttf",
                        color: Colors.black,
                        fontSize: 20,
                    decoration: TextDecoration.underline)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 150,right: 150),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "Year of Establishment",
                        style: TextStyle(
                            fontFamily: "assets/fonts/branda.ttf",
                            color: Colors.orangeAccent,
                            fontSize: 15)),
                    Text(
                        "2014",
                        style: TextStyle(
                            fontFamily: "assets/fonts/branda.ttf",
                            color: Colors.orangeAccent,
                            fontSize: 15)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 150,right: 150 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "Mode of Payment",
                        style: TextStyle(
                            fontFamily: "assets/fonts/branda.ttf",
                            color: Colors.orangeAccent,
                            fontSize: 15)),
                    Text(
                        "Cash, UPI, BHIM, Visa Card, Master Card, RuPay Card",
                        style: TextStyle(
                            fontFamily: "assets/fonts/branda.ttf",
                            color: Colors.orangeAccent,
                            fontSize: 15)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 150,right: 150 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "Timings",
                        style: TextStyle(
                            fontFamily: "assets/fonts/branda.ttf",
                            color: Colors.orangeAccent,
                            fontSize: 15)),
                    Text(
                        "Mon - Sun 9:00 am - 9:00 pm",
                        style: TextStyle(
                            fontFamily: "assets/fonts/branda.ttf",
                            color: Colors.orangeAccent,
                            fontSize: 15)),
                  ],
                ),
              ),
              Divider(),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.black12),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          "Find Your Perfect Property As Apartment, Flat , Plot, Farm Houses In Lucknow",
                          style: TextStyle(
                              fontFamily: "assets/fonts/branda.ttf",
                              color: Colors.black,
                              fontSize: 30)),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: const Flexible(
                        child: Text(
                            "1/2/3/4 BHK Flats On 90% Loan with LDA Approved & RERA registered At Faizabad Road, Kursi Road, Jankipuram, Raebareli Road in lucknow. Real Estate Lucknow - Browse residential properties for sale in Lucknow New Projects, Resale Flats, Ready To Move in Apartments. 100% Verified Listings By Best Real Estate Company in Lucknow",
                            style: TextStyle(
                                fontFamily: "assets/fonts/box.ttf",
                                color: Colors.black54,
                                fontSize: 10)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: GridView(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 2.4,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                        children: [
                          for (int i = 0; i < homeController.list.length; i++)
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  // Display an image at the top of the card that fills the width of the card and has a height of 160 pixels
                                  Image.asset(
                                    homeController.list[i],
                                    height: 100,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        15, 15, 15, 0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          children: [
                                            Image.asset("images/bed.png",height: 10,width: 20,),
                                            Text(
                                              "Bed :2",
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.grey[700],
                                              ),
                                            ),
                                            Image.asset("images/room.png",height: 10,width: 20,),
                                            Text(
                                              "Room :2",
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.grey[700],
                                              ),
                                            ),
                                            Image.asset("images/bath.png",height: 10,width: 20,),
                                            Text(
                                              "Bath :1",
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.grey[700],
                                              ),
                                            ),
                                            Image.asset("images/area.png",height: 10,width: 20),
                                            Text(
                                              "2000 sqft",
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.grey[700],
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10,),
                                        Text(
                                          homeController.listName[0],
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.grey[700],
                                          ),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            // Add a spacer to push the buttons to the right side of the card
                                            const Spacer(),

                                            TextButton(
                                              style: TextButton.styleFrom(
                                                backgroundColor:
                                                    Colors.transparent,
                                              ),
                                              child: const Text(
                                                "Detail",
                                                style: TextStyle(
                                                    color:
                                                        MyColorsSample.accent),
                                              ),
                                              onPressed: () {},
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(height: 5),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(

                ),
                child:  const FootterPage(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
