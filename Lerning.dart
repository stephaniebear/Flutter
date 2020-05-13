import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyWidget(),
    ),
  );
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('App')
      ),
      drawer: Drawer(
        child: Column(
          children: [
            //Blue Box
            Container(
              height:100,
              color: Colors.blue
            ),
            //Text
            Text('Gee'),
            //Menu
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Your Photo Album'),
              onTap: () {
                print('This is a Photo');
              }
            )
          ]
        ),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.centerRight ,
          color: Colors.red,
          width:500,
          height:300,
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Text('Hello ', style: TextStyle(fontSize:20, color: Colors.black)),
                Text('World', style: TextStyle(fontSize:30, color: Colors.green)),
                //ดาว
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children:[
                    Icon(Icons.star, color: Colors.green[500]),
                    Icon(Icons.star, color: Colors.green[500]),
                    Icon(Icons.star, color: Colors.green[500]),
                    Icon(Icons.star, color: Colors.black),
                    Icon(Icons.star, color: Colors.black),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children:[
                    Text('My ', style: TextStyle(fontSize:20, color: Colors.black)),
                    Text('Name ', style: TextStyle(fontSize:20, color: Colors.yellow)),
                    Text('is ', style: TextStyle(fontSize:20, color: Colors.purple)),
                    Text('Stephanie ', style: TextStyle(fontSize:20, color: Colors.green)),
                  ],
                ),
                //รูปนกฮูก
                Image(
                  width: 100,
                  image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                ),
                //ช่องว่างระหว่างรูปภาพและข้อความ
                SizedBox(
                  height:20
                ),
              ]
            ) //Column
           )
        )
      )
    );
  }
}
