import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {

  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
   List<dynamic> lst = [
    "https://images.unsplash.com/photo-1556155092-490a1ba16284?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8ZSUyMGNvbW1lcmNlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
    "https://images.unsplash.com/photo-1545665277-5937489579f2?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZGlzcGxheXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
    "https://images.unsplash.com/photo-1611090925566-b1fc31065f63?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8aXJvbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
    "https://images.unsplash.com/photo-1487014679447-9f8336841d58?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZWNvbW1lcmNlJTIwd2Vic2l0ZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80"
  ];
  List<dynamic> lst2 = [
    "Electronics",
    "Accessories",
    "Mobile Phones",
    "Furnitures",
    "Cars"
  ];

  var lst4 = ["Macbook Air", "LCD TV", "Iron Copper", "Chrome Book"];
  var lst3 = [
    "https://images.unsplash.com/photo-1593784991095-a205069470b6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8bGNkfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
    "https://images.unsplash.com/photo-1619872187410-cc0fd30f9203?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YXBwbGUlMjBpcG9kfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
    "https://media.istockphoto.com/photos/modern-wireless-bluetooth-headphones-with-charging-case-on-a-dark-picture-id1217083980?b=1&k=6&m=1217083980&s=170667a&w=0&h=O8O_OFtlYtQCqi1NwHzg0uu2uq5sCxYRcIPRgIZW4io=",
    "https://images.unsplash.com/photo-1568605117036-5fe5e7bab0b7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2FyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
    "https://images.unsplash.com/photo-1485965120184-e220f721d03e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmlrZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
    "https://images.unsplash.com/photo-1562277345-dc0e0e350eab?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZmFufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80"
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Ecom App UI"),
        actions: [Icon(Icons.notifications)],
      ),
      body: Container(
              child: ListView(
              
                    children: [
                      SizedBox(height: 20,),
                      ListTile(leading: Text("Items", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),), trailing: Text("View more  items"),),
                      SizedBox(height: 30),
                      Container(
                        height: 250,
                        child: GridView.count(
                          crossAxisCount: 1,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          // shrinkWrap: true,
                          // physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: List.generate(lst.length, (index) {
                            return ListView(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              // scrollDirection: Axis.horizontal,
                              children: [
                                Container(
                                  child: Image(
                                    image: NetworkImage(lst[index]),
                                  ),
                                  height: 200,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                Text(
                                  lst4[index],
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "23 Reviews",
                                ),
                                Icon(Icons.star),
                              ],
                            );
                          }),
                        ),
                      ),
                       SizedBox(
                        height: 30,
                      ), 
                      Text("Popular Items", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),), 
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: GridView.count(
                          crossAxisCount: 2,
                          // scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 10,
                          children: List.generate(lst3.length, (index) {
                            
                            return Container(
                              height: 200,
                              width: 200,
                              child: Image(
                                image: NetworkImage(lst3[index]),
                              ),
                              decoration:
                                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
                            );
                          }),
                        ),
                      )])));
                  
                          
                    
                           
  }
}