import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:node_tech/core/constantwidgets/buttonwidget.dart';
import 'package:node_tech/core/constantwidgets/textwidget.dart';
import 'package:node_tech/core/constantwidgets/txtbox.dart';
import 'package:node_tech/core/controller/screen_controller.dart';
import 'package:node_tech/theme/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeScreenController());
    return GetBuilder<HomeScreenController>(builder: (ctrl) {
      return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.jpg"), fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: const TextWidget(
              txt: "Partner With Us",
              size: 25,
              weight: FontWeight.w900,
              clr: white,
            ),
            actions: [
              ctrl.user == null
                  ? TextButton(
                      onPressed: () {
                        ctrl.signinwithgoogle();
                      },
                      child: const TextWidget(
                        txt: "SignIn",
                        clr: white,
                        size: 16,
                      ))
                  : CircleAvatar(
                      backgroundImage: NetworkImage(ctrl.user!.photoUrl!),
                      radius: 23,
                    ),
            ],
          ),
          backgroundColor: Colors.black.withOpacity(0.6),
          body: SafeArea(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TxtField(hint: "Full Name"),
                ),
                TxtField(
                  hint: "Phone Number",
                  type: TextInputType.phone,
                ),
                TxtField(
                  hint: "Email address",
                  type: TextInputType.emailAddress,
                ),
                TxtField(hint: "FSSAI Code"),
                TxtField(
                  hint: "Address",
                  lines: 4,
                ),
                TxtField(
                  hint: "Description",
                  lines: 5,
                ),
                ButtonWidget(txt: "Submit", ontap: () {}),
              ],
            ),
          ),
        ),
      );
    });
  }
}
