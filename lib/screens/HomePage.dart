import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Colors.dart';
import '../constant/Constants.dart';
import '../controllers/homePageController.dart';

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
                              InkWell(onTap: () {}, child: Text("HOME")),
                              SizedBox(width: 50),
                              InkWell(onTap: () {}, child: Text("AGENTS")),
                              SizedBox(width: 50),
                              InkWell(
                                  onTap: () {}, child: Text("CAREER WITH US")),
                              SizedBox(width: 50),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
              Divider(),
              Text("FARM HOUSE IN LUCKNOW",
                  style: TextStyle(
                      fontFamily: "assets/fonts/branda.ttf",
                      color: Colors.red,
                      fontSize: 20)),
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
                                  // Add a container with padding that contains the card's title, text, and buttons
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        15, 15, 15, 0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        // Display the card's title using a font size of 24 and a dark grey color
                                        Text(
                                          "Cards Title 2",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.grey[800],
                                          ),
                                        ),
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
                                            // Add a text button labeled "SHARE" with transparent foreground color and an accent color for the text
                                            TextButton(
                                              style: TextButton.styleFrom(
                                                backgroundColor:
                                                    Colors.transparent,
                                              ),
                                              child: const Text(
                                                "SHARE",
                                                style: TextStyle(
                                                    color:
                                                        MyColorsSample.accent),
                                              ),
                                              onPressed: () {},
                                            ),
                                            // Add a text button labeled "EXPLORE" with transparent foreground color and an accent color for the text
                                            TextButton(
                                              style: TextButton.styleFrom(
                                                backgroundColor:
                                                    Colors.transparent,
                                              ),
                                              child: const Text(
                                                "EXPLORE",
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
                                  // Add a small space between the card and the next widget
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
            ],
          ),
        ),
      ),
    );
  }
}
