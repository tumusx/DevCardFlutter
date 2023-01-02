import 'package:flutter/material.dart';

const String eldenRingName = "Elden Ring";
const String fifa22 =
    "https://image.api.playstation.com/vulcan/img/rnd/202111/0822/Lu3i2jWOkqTXwzYASl4aIQDQ.jpg";
const String fifa22Name = "FIFA 22";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://ovicio.com.br/wp-content/uploads/2022/11/20221114-ovicio-elden-ring-capa-555x555.webp"),
                  radius: 50,
                ),
              ),
              SizedBox(height: 20),
              Text(
                eldenRingName,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                  height: 20, width: 150, child: Divider(color: Colors.white)),
              Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(fifa22),
                  radius: 50,
                  backgroundColor: Colors.cyan,
                ),
              ),
              SizedBox(height: 20),
              Text(
                fifa22Name,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
