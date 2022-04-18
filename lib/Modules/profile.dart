import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/shared/shared.component/components.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

//

class _ProfileState extends State<Profile> {
  bool showPassword = false;
  @override
  bool isPassword = true;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffffa726),
        elevation: 1,
        centerTitle: true,
        leading: BackButton(),
        title: const Text('My Account'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 4,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset(0, 10))
                            ],
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  "https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250",
                                ))),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 4,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                              ),
                              color: const Color(0xffffa726),
                            ),
                            child: const Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                TextFormField(
                  // controller: name,
                  enabled: false,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: "SSN",
                    prefixIcon: Icon(
                      Icons.credit_card,
                      // color: Color(0xff0D47A1),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  // controller: name,
                  enabled: false,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: "Examble@gmail.com",
                    prefixIcon: Icon(
                      Icons.email,
                      // color:  Color(0xffffa726),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  //
                  //  بحطها دي بتسحل البيانات الي خدتها من الفورمبحطها جوا Variable
                  // controller: PasswordControler,
                  keyboardType: TextInputType.visiblePassword,
                  // بحطها في متغير عشان اقدر اغير قيمتها
                  obscureText: isPassword,
                  decoration: InputDecoration(
                    hintText: "Password",
                    // labelText: "Password",
                    // labelStyle: TextStyle(color: Color(0xff0D47A1),),
                    prefixIcon: const Icon(
                      Icons.lock,
                      // color: Color(0xff0D47A1),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isPassword = !isPassword;
                        });
                      },
                      icon: Icon(
                        isPassword
                            ? Icons.visibility_off
                            : Icons.remove_red_eye,
                        // color: const Color(0xff0D47A1),
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Password must be not empty';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlineButton(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () {
                        Navigator.of(context).pushNamed("home");
                      },
                      child: const Text("CANCEL",
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 2.2,
                              color: Colors.black)),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      color: const Color(0xffffa726),
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text(
                        "SAVE",
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 2.2,
                            color: Colors.white),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
