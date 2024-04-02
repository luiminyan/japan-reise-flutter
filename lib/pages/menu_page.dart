import 'package:flutter/material.dart';
import 'package:japan_reise/components/button.dart';
import 'package:japan_reise/components/event_tile.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // variable, isDarkMode
  bool _isDarkmode = false;

  @override
  Widget build(BuildContext context) {
    // define the list of events in scroll bar
    List<EventTile> EventList = [
      // 3 example events
      EventTile(
        name: "Mitama Matsuri Festival",
        price: '49 Euro',
        imagePath: 'lib/images/japan7.png',
        rating: "5",
        // when the pic is clicked, navigate to the event page
        details: () => Navigator.pushNamed(context, '/festivalpage'),
      ),
      EventTile(
        name: "Noodle Haromy Japan",
        price: '19 Euro',
        imagePath: 'lib/images/japan3.png',
        rating: "4",
        details: () => Navigator.pushNamed(context, '/noodlepage'),
      ),
      EventTile(
        name: "Mount Fuji Tour",
        price: '39 Euro',
        imagePath: 'lib/images/japan6.png',
        rating: "4.7",
        details: () => Navigator.pushNamed(context, '/fujitourpage'),
      )
    ];

    return Scaffold(
      backgroundColor: _isDarkmode ? Colors.black : Color.fromARGB(255, 222, 210, 243),
      appBar: AppBar(
        title: Text(
          "J A P A N",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          )
        ),
        centerTitle: true,
        // also set the color in appBar
        backgroundColor: Colors.transparent,
        elevation: 1, //1 as transparent, 0 as original
        leading: Icon(
            Icons.menu,
            color: Colors.white,
        ),
        // set the stateful actions
        actions: [
          IconButton(
              // placeholder onPressed
              onPressed: (){
                // set setState()
                setState(() {
                  _isDarkmode = !_isDarkmode;
                });
              },
              icon: _isDarkmode? Icon(Icons.light_mode, color: Colors.white) : Icon(Icons.dark_mode, color: Colors.black)
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: IconButton(
                onPressed: () => Navigator.pushNamed(context, '/cartpage'),
                icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.white
                ),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            decoration: BoxDecoration(
              color: const Color(0xFFFFB875),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              // make space between elements in row
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                        "32% Nachlass",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                    ),
                    SizedBox(height: 15),
                    MyButton(
                        myText: "Buchen",
                        event: () => Navigator.pushNamed(context, '/fujitourpage')
                    )
                  ],
                ),
                // SizedBox(width: 25),
                Image.asset(
                    'lib/images/japan6.png',
                    height: 100,
                )
              ],
            ),
          ),
          SizedBox(
            height: 15
          ),
          // the search box
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Suche Event",
                  // border for the search box
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: 2
                    )
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white
                  )
                )
              ),
            ),
          ),
          SizedBox(
            height: 15
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Events",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          ),
          SizedBox(height: 5),
          // make the ListView expanded
          Expanded(
            //   ListView on EventList
            child: ListView.builder(
                itemBuilder: (context,index) => EventList[index],
                // set the tem count to size of the event list
                itemCount: EventList.length,
                scrollDirection: Axis.horizontal,
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Derzeit beliebt",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 61, 91, 212),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // make the picture clickable
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/kimonopage'),
                  child: Image.asset(
                      'lib/images/japan2.png',
                      height: 100
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kimono Kultur",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      )
                    ),
                    SizedBox(width: 10),
                    Text(
                      "10 Euro",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      )
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10)
        ],
      ),
    );
  }
}
