import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            title: Container(
              margin: const EdgeInsets.only(top: 15, bottom: 20, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.orangeAccent[100],
                    backgroundImage: AssetImage("assets/images/fatim.jpg"),
                    radius: 22,
                    //child: const Text("Photo",style: TextStyle(fontSize: 14.7, color: Colors.white),),
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_pin, color: Colors.orangeAccent[200]),
                      const SizedBox(width: 5),
                      const Text("Dakar, SN")
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.calendar_month, color: Colors.orangeAccent[200]),
                      const SizedBox(width: 7),
                      Icon(Icons.notifications_active_sharp, color: Colors.orangeAccent[200])
                    ],
                  )
                ],
              ),
            )
        ),
        body: SingleChildScrollView(
            child: Column(
              children: [
                //profileSection,
                const SizedBox(height: 10,),
                searchSection,
                const SizedBox(height: 10,),
                headerSection,
                const SizedBox(height: 10,),
                menuRowSection,
                menuPriceSection,
                //dividerSection
              ],
            )
        ),
      ),
    );
  }
}

Widget searchSection = Container(
  margin: const EdgeInsets.symmetric(horizontal: 10),
  padding: const EdgeInsets.all(10),
  decoration: BoxDecoration(
    color: Colors.orangeAccent[100],
    borderRadius: BorderRadius.circular(20),
  ),
  child: const TextField(
    cursorColor: Colors.pink,
    decoration: InputDecoration(
        prefixIcon: Icon(Icons.search, size: 35,),
        prefixIconColor: Colors.white,
        hintText: 'Recherche....',
        hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 25
        ),
        border: InputBorder.none
    ),
  ),
);
Widget headerSection = Container(
  height: 250,
  width: double.infinity,
  margin: const EdgeInsets.only(left: 15, right: 15),
  padding: const EdgeInsets.only(top: 15, left: 15, right: 10),
  decoration: const BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(40)
    ),
    image: DecorationImage(
        fit: BoxFit.fitWidth,
        alignment: Alignment.topRight,
        image: AssetImage("assets/images/food1.jpg"),
        opacity: 0.5
    ),
    color: Colors.black54,
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text("Salades sec riche en protéines", style: TextStyle(
        fontSize: 25,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),),
      const SizedBox(height: 20,),
      const Text("Buy one and Get one \n for free",  style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          wordSpacing: 3
      )),
      const SizedBox(height: 20,),
      ElevatedButton(
        style: ButtonStyle(
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
            foregroundColor: const WidgetStatePropertyAll(Colors.white),
            backgroundColor: const WidgetStatePropertyAll(Colors.orangeAccent)
        ),
        onPressed: () {},
        child: const Text("Get Started", style: TextStyle(
          fontSize: 25,
        ),),
      ),
    ],
  ),
);
Widget menuRowSection = Container(
  padding: const EdgeInsets.only(left: 15, right: 15),
  margin: const EdgeInsets.only(left: 10),
  child: SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Builder(
        builder: (BuildContext localContext) {
          return ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.amberAccent)
              ),
              onPressed: () {
                showDialog(
                  context: localContext,
                  builder: (localContext) {
                    return AlertDialog(
                      //shape: RoundedRectangleBorder(
                        //borderRadius: BorderRadius.circular(40)
                    //  ),
                      title: const Text("MY CAPPUCCINO"),
                      content: const Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image(image: AssetImage("assets/images/food1.jpg")),
                          Text("Capuccinu originale de taille standard et de bonne qualité", style: TextStyle(
                            fontSize: 25
                          ),),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Prix", style: TextStyle(
                                color: Colors.deepOrange,
                                fontSize: 20,
                                letterSpacing: 5,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'ameth'
                              ),),
                              //Icon(Icons.arrow_forward, size: 35, grade: 5, weight: 40, color: Colors.orange,),
                              Text("2.500 FCFA", style: TextStyle(
                                  decorationThickness: 5,
                                  decorationColor: Colors.deepOrange,
                                  decoration: TextDecoration.underline,
                                  color: Colors.deepOrange,
                                  letterSpacing:2,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'ameth'
                              ),)
                            ],
                          )
                        ],
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(localContext).pop();
                            },
                            child: const Text("Fermer", style: TextStyle(
                              fontSize: 25
                            ),)
                        )
                      ],
                    );
                  }
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.coffee),
                  Text("Cappuchino")
                ],
              )
          );
        }
        ),
        const Padding(padding: EdgeInsets.all(5)),
        const ElevatedButton(
            onPressed: null,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.coffee_maker),
                Text("Coffee")
              ],
            )
        ),
        const Padding(padding: EdgeInsets.all(5)),
        const ElevatedButton(
            onPressed: null,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.local_pizza),
                Text("Pizza")
              ],
            )
        ),
        const Padding(padding: EdgeInsets.all(5)),
        const ElevatedButton(
            onPressed: null,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.fastfood),
                Text("Fast Food")
              ],
            )
        ),
      ],
    ),
  ),
);
Widget menuPriceSection = Container(
  padding: const EdgeInsets.all(15),
  height: 400,
  child: GridView.count(
    crossAxisCount: 2,
    mainAxisSpacing: 25,
    crossAxisSpacing: 10,
    children: [
      Container(
        padding: const EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.orangeAccent, width: 3,
            ),
            //color: Colors.white38,
            borderRadius: BorderRadius.circular(70)
        ),
        child: const Stack(
          children: [
            Positioned(
              top:0,
              left: 45,
              child: Image(
                image: AssetImage("assets/images/coffe.png"),
                height: 100,
              ),
            ),
            Positioned(
                top: 80,
                left: 50,
                child: Column(
                  children: [
                    Text("Cappucino", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    Text("Café délicieux")
                  ],
                )
            ),
            Positioned(
                bottom: -10,
                left: 75,
                child: IconButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.orangeAccent)
                    ),
                    onPressed: null,
                    icon: Icon(Icons.add, size: 35,color: Colors.white,)
                )
            )
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.orangeAccent, width: 3,
            ),
            //color: Colors.white38,
            borderRadius: BorderRadius.circular(70)
        ),
        child: const Stack(
          children: [
            Positioned(
              top:0,
              left: 45,
              child: Image(
                image: AssetImage("assets/images/coffe.png"),
                height: 100,
              ),
            ),
            Positioned(
                top: 80,
                left: 50,
                child: Column(
                  children: [
                    Text("Cappucino", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    Text("Café délicieux")
                  ],
                )
            ),
            Positioned(
                bottom: -10,
                left: 75,
                child: IconButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.orangeAccent)
                    ),
                    onPressed: null,
                    icon: Icon(Icons.add, size: 35,color: Colors.white,)
                )
            )
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.orangeAccent, width: 3,
            ),
            //color: Colors.white38,
            borderRadius: BorderRadius.circular(70)
        ),
        child: const Stack(
          children: [
            Positioned(
              top:0,
              left: 45,
              child: Image(
                image: AssetImage("assets/images/coffe.png"),
                height: 100,
              ),
            ),
            Positioned(
                top: 80,
                left: 50,
                child: Column(
                  children: [
                    Text("Cappucino", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    Text("Café délicieux")
                  ],
                )
            ),
            Positioned(
                bottom: -10,
                left: 75,
                child: IconButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.orangeAccent)
                    ),
                    onPressed: null,
                    icon: Icon(Icons.add, size: 35,color: Colors.white,)
                )
            )
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.orangeAccent, width: 3,
            ),
            //color: Colors.white38,
            borderRadius: BorderRadius.circular(70)
        ),
        child: const Stack(
          children: [
            Positioned(
              top:0,
              left: 45,
              child: Image(
                image: AssetImage("assets/images/coffe.png"),
                height: 100,
              ),
            ),
            Positioned(
                top: 80,
                left: 50,
                child: Column(
                  children: [
                    Text("Cappucino", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    Text("Café délicieux")
                  ],
                )
            ),
            Positioned(
                bottom: -10,
                left: 75,
                child: IconButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.orangeAccent)
                    ),
                    onPressed: null,
                    icon: Icon(Icons.add, size: 35,color: Colors.white,)
                )
            )
          ],
        ),
      ),
    ],
  ),
);
