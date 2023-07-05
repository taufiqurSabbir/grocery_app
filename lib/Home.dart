import 'package:flutter/material.dart';

extension ColorExtension on String {
  toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Catagory> catagory = [
    Catagory('Fruits'),
    Catagory('Vegetable'),
    Catagory('Rice'),
    Catagory('Eggs'),
  ];

  List<Products> producs = [
    Products(
        'Mango',
        'https://getfreshswansea.co.uk/wp-content/uploads/2020/07/mango.jpg',
        80,
        10,
        5)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'image/logo.png',
                  width: 180,
                  height: 180,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Colors.white,
                    ),
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.deepOrange[400],
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,

                  // fillColor: Color(0xFFF8FAFF),
                  fillColor: '#dfe8f8'.toColor(),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.filter_list),
                  label: Text('Search want to buy'),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Expanded(
            child: ListView.builder(

                itemCount: catagory.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(catagory[index].title),
                  );
                }),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.shopping_cart,
          color: Colors.white,
        ),
      ),
    );
  }
}

class Catagory {
  String title;
  Catagory(this.title);
}

class Products {
  String name, image;
  int cal, price, delivery_time;
  Products(this.name, this.image, this.cal, this.price, this.delivery_time);
}
