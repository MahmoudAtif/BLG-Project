import 'package:flutter/material.dart';
import 'package:project/shared/shared.component/components.dart';

class ResetPassword extends StatefulWidget {
  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();
  bool isPassword = true;

  var ConfirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const BackButton(
          color: Colors.black,
        ),
        title: const Text(
          "Reset Now",
          style: TextStyle(color: Colors.black, fontSize: 23),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50.0,
              ),
              const Text(
                'Verification code has been sent to ',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Examble@gmail.com",
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
              const SizedBox(
                height: 70.0,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Enter Verification Code',
                  prefixIcon: Icon(Icons.vpn_key_outlined),
                  //border: OutlineInputBorder()
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextFormField(
                // controller: PasswordControler,
                keyboardType: TextInputType.visiblePassword,
                obscureText: isPassword,
                decoration: InputDecoration(
                  hintText: "Please set your password",
                  prefixIcon: const Icon(
                    Icons.lock,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    icon: Icon(
                      isPassword ? Icons.visibility_off : Icons.remove_red_eye,
                    ),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return '';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextFormField(
                // controller: PasswordControler,
                keyboardType: TextInputType.visiblePassword,
                obscureText: isPassword,
                decoration: InputDecoration(
                  hintText: "Please confirm the password",
                  prefixIcon: const Icon(
                    Icons.lock,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    icon: Icon(
                      isPassword ? Icons.visibility_off : Icons.remove_red_eye,
                    ),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return '';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 50.0,
              ),
              SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: deffaultButton(
                      TextColor: Colors.white, text: "Reset", function: () {})),
            ],
          ),
        ),
      ),
    );
  }
}
