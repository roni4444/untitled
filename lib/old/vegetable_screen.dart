import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              FontAwesomeIcons.userAlt,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Categories",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(),
                child: Expanded(
                  child: Container(
                      constraints:
                          const BoxConstraints.expand(width: 100, height: 30),
                      width: 100,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                            image: AssetImage("images/tomato.jpg"),
                            fit: BoxFit.fitWidth),
                        //child: Text("clickMe") // button text
                      )),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset("images/tomato.jpg"),
              ),
              GestureDetector(
                  child: Container(
                      width: 120,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                            image: AssetImage("images/tomato.jpg"),
                            fit: BoxFit.cover),
                        //child: Text("clickMe") // button text
                      )),
                  onTap: () {
                    print("you clicked me");
                  })
            ],
          ),
        ),
      ),
    );
  }
}
