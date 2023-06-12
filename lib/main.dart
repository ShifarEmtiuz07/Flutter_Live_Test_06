import 'package:flutter/material.dart';

main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        
        
        
        debugShowCheckedModeBanner: false,
        home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
   HomeActivity({super.key});
  final List<Map<String, dynamic>> shoppingItems = [
    {'name': 'Apples', 'icon': Icons.shopping_basket},
    {'name': 'Bananas', 'icon': Icons.shopping_basket},
    {'name': 'Bread', 'icon': Icons.shopping_basket},
    {'name': 'Milk', 'icon': Icons.shopping_basket},
    {'name': 'Eggs', 'icon': Icons.shopping_basket},
   
  ];

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// appBar

      appBar: AppBar(
        title: Text("My Shopping List"),
        titleSpacing: 10,
        centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 0.8,
        elevation: 30,
        backgroundColor: Colors.blue,
        actions: [
         
          IconButton(
              onPressed: () {
                MySnackBar("Cart is empty", context);
              },
              icon: Icon(Icons.shopping_cart)),
         
        ],
      ),
      body:  ListView.builder(
        itemCount: shoppingItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(shoppingItems[index]['icon']),
            title: Text(shoppingItems[index]['name']),
          );
        },
      ///floatingActionButton

      

      ///bottom-Nav-Bar

     
      ///Drawer

      
      ),


      
         
    
    );
  }
}
