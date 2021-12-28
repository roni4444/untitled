import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                  "Welcome Back",
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
                      side: const BorderSide(width: 1.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ListTile(
                      leading: Image.asset("images/google.png"),
                      title: const Text("Continue with Google"),
                    ),
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
                      const Text(
                        "00:19",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 30.0,
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
                          const Text("Didn't received code."),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Resend Code",
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
                        child: const Text("Submit"),
                      ),
                      inputSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have a account?"),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "SIGN UP",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
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
