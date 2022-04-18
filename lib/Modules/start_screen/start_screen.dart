import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:get/get_core/src/get_main.dart';
//import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:project/shared/shared.component/components.dart';

// ignore: camel_case_types
class Start_screen extends StatefulWidget {
  const Start_screen({Key? key}) : super(key: key);

  @override
  _Start_screenState createState() => _Start_screenState();
}

// ignore: camel_case_types
class _Start_screenState extends State<Start_screen> {
  String selectedlang = 'English';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 60,
          ),
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image(
                  image: AssetImage("assets/LLL.jpg"),
                  width: 200,
                  height: 200,
                ),
                // DropdownButton(
                //   // ignore: prefer_const_literals_to_create_immutables
                //   items: [
                //     const DropdownMenuItem(
                //       child: Text("English"),
                //       value: 'English',
                //     ),
                //     const DropdownMenuItem(
                //       child: Text("Arabic"),
                //       value: 'Arabic',
                //     ),
                //   ],
                //   value: selectedlang,
                //   onChanged: (value) {
                //     setState(() {
                //       selectedlang != value;
                //     });
                //     Get.updateLocale(Locale(selectedlang));
                //   },
                // ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    // color: Color(0xff0D47A1),
                    color: const Color(0xffffa726),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0))),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      deffaultButton(
                        function: () {
                          Navigator.of(context).pushNamed("signin");
                        },
                        text: "Sign In".tr,
                        background: Colors.white,
                        TextColor: Colors.black,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      deffaultButton(
                        function: () {
                          Navigator.of(context).pushNamed("signup");
                        },
                        text: "Sign Up".tr,
                        background: Colors.white,
                        TextColor: Colors.black,
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
