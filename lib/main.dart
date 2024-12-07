import 'package:flutter/material.dart';
import 'package:get_started/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/cofe1.png"),
              opacity: 0.8,
              fit: BoxFit.cover
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text("Choice your \n favorite coffee", textAlign: TextAlign.center, style: TextStyle(
                fontSize: 40,
                fontFamily: 'anton',
                letterSpacing: 5,
                overflow: TextOverflow.fade,
                wordSpacing: 7,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),),
              const SizedBox(height: 20,),
              const Text("the best grain, the finest roact, the most powerfull flavour", textAlign: TextAlign.center, style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),),
              const SizedBox(height: 70),
              SizedBox(
                width: 400,
                child: Builder(
                  builder: (BuildContext localContext) {
                    return ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.brown),
                      ),
                      onPressed: () {
                        Navigator.of(localContext).push(
                          MaterialPageRoute(builder: (_) => const HomePage()),
                        );
                      },
                      child: const Text(
                        "Get Started",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
