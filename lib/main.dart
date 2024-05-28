import 'package:apilayer/APILayer/ApiLayer.dart';
import 'package:apilayer/Postman/Postman_API.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "APILayer",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2,
                            color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        image: DecorationImage(
                            image: AssetImage("assets/images/apilayer.png")
                        )
                    )
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      padding: const EdgeInsets.all(3),
                      textStyle: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ApiLayer(),
                          settings: const RouteSettings(
                            arguments: "https://apilayer.com/",
                          ),
                        ),
                      );
                    },
                    child: Text(
                      "APILayer",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.2,
                          wordSpacing: 0.3,
                          color: Colors.white),
                    )),
                Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2,
                            color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        image: DecorationImage(
                            image: AssetImage("assets/images/postman.png")
                        )
                    )
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      padding: const EdgeInsets.all(3),
                      textStyle: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Postman_API(),
                          settings: const RouteSettings(
                            arguments: "https://www.postman.com/",
                          ),
                        ),
                      );
                    },
                    child: Text(
                      "Postman",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.2,
                          wordSpacing: 0.3,
                          color: Colors.white),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
