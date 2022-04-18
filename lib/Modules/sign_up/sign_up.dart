import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/shared/shared.component/components.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // ignore: non_constant_identifier_names
  var SSN = TextEditingController();
  var name = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  var confirmPassword = TextEditingController();
  var phoneNumber = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const BackButton(
          color: Color(0xffFFFA726),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                const Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: SSN,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: "SSN",
                    prefixIcon: Icon(
                      Icons.credit_card,
                      color: Color(0xff0D47A1),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'SSN must be not empty';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: name,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: "Name",
                    prefixIcon: Icon(
                      Icons.person,
                      color: Color(0xff0D47A1),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'name must be not empty';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: email,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: "Email Address",
                    prefixIcon: Icon(
                      Icons.email,
                      color: Color(0xff0D47A1),
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
                  height: 20,
                ),
                TextFormField(
                  controller: password,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xff0D47A1),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'SSN must be not empty';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: confirmPassword,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: "ConfirmPassword",
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xff0D47A1),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'ConfirmPasssword must be not empty';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: phoneNumber,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: "PhoneNumber",
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Color(0xff0D47A1),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Phone Number must be not empty';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                deffaultButton(
                  function: () {
                    if (formkey.currentState!.validate()) {
                      // print(emailControler.text);
                      // print(PasswordControler.text);
                    }
                  },
                  text: "Sign Up",
                  TextColor: Colors.white,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("signin");
                  },
                  child: const Text(
                    "Already have an account",
                    style: TextStyle(
                      color: Color(0xff0D47A1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
