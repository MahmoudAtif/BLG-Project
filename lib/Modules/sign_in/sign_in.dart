import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/shared/shared.component/components.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailControler = TextEditingController();

  // ignore: non_constant_identifier_names
  var PasswordControler = TextEditingController();

  var formkey = GlobalKey<FormState>();

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:AppBar(
      backgroundColor: Colors.white,
      //   elevation: 0,
      // ),
      body: Padding(
        // const to work in compile time not in run time
        padding: const EdgeInsets.all(25.0),

        // عاشن لما الكيبورد تغطي علي الشاشه اقدر اعمل اسكرول
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Image(
                      image: AssetImage("assets/LLL.jpg"),
                      width: 200,
                      height: 200,
                    ),
                  ],
                ),
                //دي بتنزل مسافه مابين الحاجاه الي فوقيها والي تحتيها او بمعني اصح بتعمل خانه فاضيه
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: emailControler,
                  // To Change Type Of Form To Email And Can Change to (Phone , number )
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: "Email Address",
                    prefixIcon: Icon(
                      Icons.email,
                      // color: Color(0xff0D47A1),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'email must be not empty';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                TextFormField(
                  //
                  //  بحطها دي بتسحل البيانات الي خدتها من الفورمبحطها جوا Variable
                  controller: PasswordControler,
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
                  height: 50,
                ),
                deffaultButton(
                  function: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.of(context).pushNamed("home");
                    }
                  },
                  text: "Sign In",
                  TextColor: Colors.white,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("forgetpassword");
                      },
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("signup");
                      },
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                          color: Color(0xff0D47A1),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
