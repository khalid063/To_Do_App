import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ToDopage extends StatefulWidget {
  const ToDopage({Key? key}) : super(key: key);

  @override
  State<ToDopage> createState() => _ToDopageState();
}

class _ToDopageState extends State<ToDopage> {

  List ToDoList = [
    {"1":"1"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do App"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Column(
          children: [
            Expanded(
              flex: 1,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 7,
                      child: TextFormField(),
                    ),
                    Expanded(
                      flex: 3,
                      child: ElevatedButton(
                        child: Text("Add"),
                        onPressed: (){

                        },
                      ),
                    ),
                  ],
                )
            ),
            Expanded(
                flex: 9,
                child: ListView.builder(
                  itemCount: ToDoList.length,
                    itemBuilder: (context, index){
                      return Card(
                        child: Text("List Will Show"),
                      );
                    }
                )
            )
          ],
        ),
      ),
    );
  }
}

