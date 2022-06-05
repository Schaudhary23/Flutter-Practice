import 'package:flutter/material.dart';

class DpDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "C:\Users\chaud\Desktop\mountain-beautiful-landscape-background-design-vector-37158283"),
                    fit: BoxFit.cover)),
            child: Container(
              width: 200,
              height: 200,
              child: Container(
                alignment: const Alignment(0.0, 2.0),
                child: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://www.shutterstock.com/image-photo/bright-colorful-mottled-background-wooden-painted-1009499824"),
                  radius: 60.0,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          const Text(
            "Shivam Chaudhary",
            style: TextStyle(
                fontSize: 25.0,
                color: Color.fromARGB(255, 50, 160, 215),
                letterSpacing: 2.0,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Flutter Developer",
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.black45,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 30,
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "Likes",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                          "100M",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "Followers",
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                          "100M",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "Following",
                          style: TextStyle(
                              color: Colors.amberAccent,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                          "1",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            //padding: EdgeInsets.fromLTRB(20, 0, 20, 0),

            children: <Widget>[
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  alignment: Alignment.center,
                  child: const Text(
                    "Lets do some coding",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(30),
                  alignment: Alignment.bottomLeft,
                  child: const Text(
                    "shivam.chaudharyd@kelltontech.com",
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(30),
                  alignment: Alignment.bottomRight,
                  child: const Text(
                    "7428121210",
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
