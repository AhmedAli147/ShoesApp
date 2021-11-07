import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset('box-3.jpg'),
        title: Row(
          children: [
            Text(
              'mobi',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              'sports',
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              'Running',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Text(
              '15 results',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
             call(),
             call1(),
             call2(),
           
             call12(),
            ],
          )
        ],
      ),
    );
  }
}

Widget call1() {
  return Container(
    child: Stack(
      children: [
        abc("Men's", "FuelCell Echo", "Men's", "Shoes1.jpg"),
        Positioned(
          bottom: -2,
          right: 2,
          child: CircleAvatar(
            child: Icon(Icons.shopping_basket , color: Colors.black,),
            backgroundColor: Colors.yellow,
            radius: 20,
          ),
        ),
        ElevatedButton(
          
          onPressed: () {},
          child: Text(
            "New",
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            
            shape: StadiumBorder(),
            
          ),
        )
      ],
      clipBehavior: Clip.none,
    ),
  );
}

Widget call12() {
  return Container(
    child: Stack(
      children: [
        abc("Men's", "FuelCell Echo", "Men's", "Shoes6.jpg"),
        Positioned(
          bottom: -2,
          right: 2,
          child: CircleAvatar(
            child: Icon(Icons.shopping_basket, color: Colors.black,),
            backgroundColor: Colors.yellow,
            radius: 20,
          ),
        ),
        ElevatedButton(
          
          onPressed: () {},
          child: Text(
            "New",
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            
            shape: StadiumBorder(),
            
          ),
        )
      ],
      clipBehavior: Clip.none,
    ),
  );
}

Widget call() {
  return Container(
    child: Stack(
      children: [
        abc("Men's", "FuelCell Echo", "Men's", "Shoes7.jpg"),
        Positioned(
          bottom: -2,
          right: 2,
          child: CircleAvatar(
            child: Icon(Icons.shopping_basket,color: Colors.black),
            
            backgroundColor: Colors.yellow,
            radius: 20,
            
          ),
        )
      ],
      clipBehavior: Clip.none,
    ),
  );
}

Widget call2() {
  return Container(
    child: Stack(
      children: [
        abc("Men's", "FuelCell Echo", "Men's", "shoes3.jpg"),
        Positioned(
          bottom: -2,
          right: 2,
          child: CircleAvatar(
            child: Icon(Icons.shopping_basket, color: Colors.black,),
            
            backgroundColor: Colors.yellow,
            radius: 20,
            
          ),
        )
      ],
      clipBehavior: Clip.none,
    ),
  );
}



Widget abc(String Category, String productname, String name, String img) {
  return Padding(
    padding: const EdgeInsets.all(14.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        color: Colors.grey.shade200,
      ),
      height: 150,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: image(img),
              
              
              
              height: 150,
              width: 150,
              color: Colors.white,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 78),
                child: Text(
                  "${Category}",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 32),
                child: Text(
                  "${productname}",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 84),
                child: Text(
                  "${name}",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star_rate,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.star_rate,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.star_rate,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.star_rate,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.star_rate,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Text(
                  "Rs.1999",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}



Widget image (String img){
  return Container(
    child: Image.asset(img),
  );
}