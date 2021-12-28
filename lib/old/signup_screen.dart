import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  SizedBox inputSpace = const SizedBox(
    height: 20.0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Create your account",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,
                  ),
                ),
                inputSpace,
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(width: 1.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ListTile(
                      leading: Image.asset("images/google.png"),
                      title: Text("Continue with Google"),
                    ),
                  ),
                ),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Or log in with Phone Number"),
                  ),
                ),
                inputSpace,
                inputSpace,
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        textCapitalization: TextCapitalization.words,
                        onSaved: (value) {},
                        validator: (value) {},
                        decoration: const InputDecoration(
                          floatingLabelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          suffixIcon: Icon(
                            FontAwesomeIcons.check,
                            color: Colors.green,
                          ),
                          filled: true,
                          labelText: "Name",
                          fillColor: Colors.black12,
                        ),
                      ),
                      inputSpace,
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        onSaved: (value) {},
                        validator: (value) {},
                        decoration: const InputDecoration(
                          floatingLabelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          suffixIcon: Icon(
                            FontAwesomeIcons.check,
                            color: Colors.green,
                          ),
                          filled: true,
                          labelText: "Phone Number",
                          fillColor: Colors.black12,
                        ),
                      ),
                      inputSpace,
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        onSaved: (value) {},
                        validator: (value) {},
                        decoration: const InputDecoration(
                          floatingLabelStyle: TextStyle(
                            color: Colors.black,
                          ),
                          suffixIcon: Icon(
                            FontAwesomeIcons.eyeSlash,
                            color: Colors.black,
                          ),
                          filled: true,
                          labelText: "Enter OTP received",
                          fillColor: Colors.black12,
                        ),
                      ),
                      inputSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have a account?"),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "LOG IN",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                      inputSpace,
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          fixedSize:
                              Size(MediaQuery.of(context).size.width, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35.0),
                          ),
                        ),
                        child: Text("Submit"),
                      ),
                    ],
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
