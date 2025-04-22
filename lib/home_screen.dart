import 'package:flutter/material.dart';
import 'coffee_model.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<CoffeeModel> coffeeList = [
    CoffeeModel(name: 'Caffe Mocha', description: 'Deep Foam', price: '6.50', image: 'mocha.png'),
    CoffeeModel(name: 'Flat White', description: 'Espresso', price: '5.00', image: 'flatwhite.png'),
    CoffeeModel(name: 'Cappuccino', description: 'Creamy Shot', price: '7.99', image: 'cappuccino.png'),
    CoffeeModel(name: 'Latte', description: 'Smooth Taste', price: '4.75', image: 'latte.png'),
    CoffeeModel(name: 'Esperesso', description: 'Classic Brew', price: '2.99', image: 'Esperesso.png'),
    CoffeeModel(name: 'americano', description: 'Espresso', price: '3.50', image: 'americano.png'),
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 10, 10, 10),
        elevation: 0,
        title: const Text(''),
        actions: [
          Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
  children: [
    
    Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 50,
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(16),
        ),
        child:Row(
          children: const [
            Icon(Icons.search, color: Colors.white54),
            SizedBox(width: 10),
            Text(
              'Search coffee',
              style: TextStyle(color: Colors.white54, fontSize: 16),
            ),
          ],
        ),
      ),
    ),
    const SizedBox(width: 10),

    Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Color(0xFFB87333), 
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Icon(
        Icons.tune,
        color: Colors.white,
      ),
    ),
  ],
),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search coffee',
                prefixIcon: const Icon(Icons.search, color: Colors.white),
                filled: true,
                fillColor: const Color.fromARGB(255, 88, 88, 88),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 0.7,
          children: coffeeList.map((coffee) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailScreen(coffee: coffee),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                      child: Image.asset(
                        coffee.image,
                        height: 160,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(coffee.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                          Text(coffee.description, style: const TextStyle(color: Colors.grey)),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('\$ ${coffee.price}', style: const TextStyle(fontWeight: FontWeight.bold)),
                              Container(
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFBC02D),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Icon(Icons.add, size: 16, color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}