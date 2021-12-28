import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Selected {
  email,
  phone,
}

class SignUpUI extends StatefulWidget {
  const SignUpUI({Key? key}) : super(key: key);

  @override
  _SignUpUIState createState() => _SignUpUIState();
}

class _SignUpUIState extends State<SignUpUI> {
  Selected selected = Selected.email;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  SizedBox inputSpace = const SizedBox(
    height: 20.0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Sign up",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35.0),
                    child: Text(
                      "Email",
                      style: TextStyle(
                          fontSize: 10,
                          color: (selected == Selected.email)
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      side: BorderSide(width: 0.3),
                      elevation: 0,
                      primary: (selected == Selected.email)
                          ? Colors.black
                          : Colors.white),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      "Phone Number",
                      style: TextStyle(
                          fontSize: 10,
                          color: (selected == Selected.phone)
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      side: BorderSide(width: 0.3),
                      elevation: 0,
                      primary: (selected == Selected.phone)
                          ? Colors.black
                          : Colors.white),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      textCapitalization: TextCapitalization.words,
                      keyboardType: TextInputType.name,
                      onSaved: (value) {},
                      validator: (value) {},
                      decoration: const InputDecoration(
                        prefixIcon: Icon(FontAwesomeIcons.user),
                        floatingLabelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        labelText: "Enter Your Name",
                        fillColor: Colors.black12,
                      ),
                    ),
                    inputSpace,
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (value) {},
                      validator: (value) {},
                      decoration: const InputDecoration(
                        prefixIcon: Icon(FontAwesomeIcons.envelope),
                        floatingLabelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        labelText: "Enter your Email Address",
                        fillColor: Colors.black12,
                      ),
                    ),
                    inputSpace,
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      textCapitalization: TextCapitalization.none,
                      keyboardType: TextInputType.visiblePassword,
                      onSaved: (value) {},
                      validator: (value) {},
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        prefixIcon: const Icon(FontAwesomeIcons.key),
                        suffixIcon: const Icon(FontAwesomeIcons.eyeSlash),
                        floatingLabelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        labelText: "Enter password",
                        fillColor: Colors.black12,
                      ),
                    ),
                    inputSpace,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
