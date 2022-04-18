import 'package:flutter/material.dart';
import 'package:project/shared/shared.component/components.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Reset now',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Center(
                child: Text(
                  'If you want recover your account,then please provide your email ID below',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 90.0,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'please enter your email',
                  prefixIcon: Icon(Icons.account_circle),
                  //border: OutlineInputBorder()
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: deffaultButton(
                      TextColor: Colors.white,
                      text: "Verification Code",
                      function: () {
                        Navigator.of(context).pushNamed("reset");
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
