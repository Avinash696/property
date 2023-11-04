import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controllers/AgentPageController.dart';

class AgentPage extends StatelessWidget {
  AgentPage({Key? key}) : super(key: key);
  var agentController = Get.put(AgentPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: GridView(
          shrinkWrap: true,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: [
            for (int i = 0; i < agentController.agentList.length; i++)
              Card(
                elevation: 7,
                child: Image.asset(agentController.agentList[i]),
              )
          ],
        ),
      ),
    );
  }
}
