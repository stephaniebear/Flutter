import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      // นี่คือโครงการหลักของแอพ
      home: MyShop()// Scaffold
    );
  }
}



class MyShop extends StatefulWidget {
  @override
  _MyShopState createState() => _MyShopState();
}
class _MyShopState extends State<MyShop> {
  
  var product = TextEditingController();
  var quantity = TextEditingController();
  var price = TextEditingController();
  String result = '<< ผลลัพธ์ >>';
  
  
  
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
          //color: Colors.red,
          width:500,
          height:500,
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                //Text('Hello ', style: TextStyle(fontSize:20, color: Colors.black)),
                //Text('World', style: TextStyle(fontSize:30, color: Colors.green)),
                //ดาว
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children:[
                    //Icon(Icons.star, color: Colors.green[500]),
                    //Icon(Icons.star, color: Colors.green[500]),
                    //Icon(Icons.star, color: Colors.green[500]),
                    //Icon(Icons.star, color: Colors.black),
                   // Icon(Icons.star, color: Colors.black),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children:[
                    //Text('My ', style: TextStyle(fontSize:20, color: Colors.black)),
                    //Text('Name ', style: TextStyle(fontSize:20, color: Colors.yellow)),
                    //Text('is ', style: TextStyle(fontSize:20, color: Colors.purple)),
                    //Text('Stephanie ', style: TextStyle(fontSize:20, color: Colors.green)),
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
                TextField(
                  controller: product,
                  decoration: InputDecoration(
                    labelText: 'สินค้า',
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height:20),
                TextField(
                  controller: quantity,
                  decoration: InputDecoration(
                    labelText: 'จำนวน',
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height:20),
                TextField(
                  controller: price,
                  decoration: InputDecoration(
                    labelText: 'ราคา',
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height:20),
                RaisedButton(
                  child: Text('คำนวนราคา'),
                  onPressed: () {
                    print('ปุ่มกำลังทำงาน');
                    print(product.text);
                    print(quantity.text);
                    print(price.text);
                    
                    var v1 = product.text;
                    var v2 = int.parse(quantity.text); // int.parse คือ การแปลงข้อมความเป็นเลข
                    var v3 = int.parse(price.text);
                    var calculate = v2 * v3;
                    
                    setState((){
                      // setState คือ ฟังก์ชั่นการรีเฟรชหน้าแอพ
                      result = 'สินค้า : $v1 จำนวน : $v2 ราคา : $v3 ยอดรวม $calculate บาท';
                    });
                    
                  }
                ),
                SizedBox(height:20),
                Text(result, style: TextStyle(fontSize: 20.0, color: Colors.green)),
                SizedBox(height:30),
                Text('Calculator'),
              ]
            ) //Column
           )
        )
      )
    ); //Scaffold
  }
}
