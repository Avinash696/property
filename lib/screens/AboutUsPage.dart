import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("About Us",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Flexible(
                  child: Text(
                      "Nitin Properties in Jankipuram Extension, Lucknow \n \n Nitin Properties listed under Estate Agents in Jankipuram Extension, Lucknow. Check Address, Contact Number, Ratings &amp; Reviews, Photos, Maps etc, on Justdial. \n "
                      "Not everyone can afford to buy a house, which makes renting a better option. As easy as it seems, getting a house on rent is a task as many owners are concerned about the safety and maintenance of the place they are renting out. Estate Agents For Residential Rental in Lucknow can help you find the right place or suitable tenant, as per your specifications and budget. They also help homeowners find the right tenant who meets all their criteria. \n"
                      "If you are looking to rent a property or putting your property on rent, get in touch with Nitin Properties in Jankipuram Extension Lucknow. You can enquire in person regarding every detail you need for the process. \n "
                      "Nitin Properties in Jankipuram Extension, Lucknow is a reliable name in the industry as they aim to deliver the best experience to their customers. This has helped them build up a loyal customer base. They started their journey in 2014 and ever since, they have ensured that the customer remains at the centre of their business operations and philosophy. As they are located in a favourable neighbourhood, exactly at Nitin Properties, Nahar Road, Jankipuram Extension-226031 , it is easy to locate Nitin Properties on the map. For any kind of assistance or questions, it is best to contact them directly during their business hours. \n "
                      "Also listed in Estate Agents, Estate Agents For Residential Rental, Estate Agents For Residence, Estate Agents For Commercial Rental, Estate Agents For Commercial Spaces etc. Nitin Properties in Jankipuram Extension is one of the most trustworthy names in the field. To make the transactional experience hassle-free for customers, they accept multiple modes of payment such as Cash, UPI, BHIM, Visa Card, Master Card, RuPay Card. The best time to contact them is anytime between 09:00 - 21:00. \n "
                      "Kindly scroll up to check the detailed address and contact number of Nitin Properties in Lucknow.",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black54)),
                ),
              ),
              SizedBox(height: 40),
              Divider(),
              Text("Frequently Asked Question",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
              SizedBox(height: 30),
              Text("1. Is renting better?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              Text(
                  "Renting is a better option for many who cannot afford to buy a house. Monthly rent is less compared to home loan EMIs.",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black54)),
              SizedBox(height: 20),
              Text("2. Do I need documents before renting a house?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              Text(
                  "Yes, proper identity proof and address proof are a must before renting a house. A tenant should also ask for a signed and attested copy of the rent agreement.",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black54)),
              SizedBox(height: 20),
              Text("3. How can I find the best house for rent in Lucknow?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              Text(
                  "Estate agents can help in finding the best house to rent in Lucknow. You can contact Nitin Properties for better service and assistance.",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black54)),
              SizedBox(height: 20),
              Text("4. Does Nitin Properties help in tenant verification?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              Text(
                  "Tenant verification is usually done by the police. You can contact Nitin Properties for understanding the process better.",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black54)),
              SizedBox(height: 20),
              Text("5. Does Nitin Properties also help in finding PGs and hostels?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              Text(
                  "Yes, you can contact estate agents to rent a PG or hostel. They have a complete list of properties that are available only for bachelors.",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black54)),
            ],
          ),
        ),
      ),
    );
  }
}
