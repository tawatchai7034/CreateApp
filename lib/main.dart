import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

//shift+Alt+F = format decument

void main() {
  runApp(MyWidget());
}

//สร้าง widget ของตัวเอง
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "my app",
      home: MyHomePage(),
      //theme: ThemeData(primarySwatch: my_color), ไม่สามารถกำหนดเป็นสีของ appBar ได้
    ); //green text = widget and "textname:" = proboties
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0; //สร้าง state
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //scaffold ใช้จัดหน้าแอป
      appBar: AppBar(
        //สีพื้นหลังของ appBar
        backgroundColor: Color(0xFFDF2755),
        title: Text("ส่วน appBar"),
      ),
      body: Center(
        child: Column(
          //กำหนดตำแหน่งของ objec ใน colum
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "กดปุ่มเพื่อเพิ่มค่า",
              style: TextStyle(fontSize: 30, color: Color(0xFFEB73C7)),
            ),
            Text(
              "$number",
              style: TextStyle(fontSize: 50),
            )
            /*Text("ส่วน body colum1 row 1",
                  style: TextStyle(fontSize: 30, color: Color(0xFFEC92D1))),
              Text("ส่วน body colum 1 row 2",
                  style: TextStyle(fontSize: 30, color: Color(0xFFEB73C7))),
              Text("ส่วน body colum 1 row 3",
                  style: TextStyle(fontSize: 30, color: Color(0xFFE939B4))),*/
          ],
        ),
      ),
      /*floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        backgroundColor: Color(0xFFE9DCE5),
        children: [SpeedDialChild(
        child: Icon(Icons.add),
        label: "first item",
        backgroundColor: Color(0xFF5E92F5),
        ),
        SpeedDialChild(
        child: Icon(Icons.remove),
        label: "second item",
        backgroundColor: Color(0xFF5E92F5),
        )],
      )*/
      //สร้างปุ่มกดเพิ่มค่า
      floatingActionButton: FloatingActionButton(
        ///include function addnumber
        onPressed: addnumber,
        //ดึง icon มาแสดงผล
        child: Icon(Icons.add),
        backgroundColor: Color(0xFFF3429B),
      ),
      //กำหนดตำแหน่งของปุ่ม
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,

      // back ground Color of Scaffold
      backgroundColor: Color(0xFFFFFFFF),
    );
  }

  //function addnumber
  void addnumber() {
    /// set state when push button
    setState(() {
      number++;
    });
  }
}
