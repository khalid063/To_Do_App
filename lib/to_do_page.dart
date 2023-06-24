import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:to_do_app/style.dart';

class ToDopage extends StatefulWidget {
  const ToDopage({Key? key}) : super(key: key);

  @override
  State<ToDopage> createState() => _ToDopageState();
}

class _ToDopageState extends State<ToDopage> {

  // List toDoList = [
  //   {"1":"1"},
  //   {"1":"1"},
  //   {"1":"1"},
  // ];

  List toDoList = [];
  String item = "";

  myInputOnChange(value){
    setState(() {
      item = value;
      //print(item);
    });
  }

  AddItemIntoList(){
    setState(() {
      toDoList.add({"item":item});
      print(toDoList[0]);
    });
  }

  RemoveDataFromList(index){
    setState(() {
      toDoList.removeAt(index);
    });
  }

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
                      child: TextFormField(
                        onChanged: (value){
                          myInputOnChange(value);
                        },
                        decoration: appInputDecoretion("List Item"),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        margin: EdgeInsets.only(left: 20),
                        child: ElevatedButton(
                          style: appButtonStyle(),
                          child: Text("Add"),
                          onPressed: (){
                            AddItemIntoList();
                          },
                        ),
                      ),
                    ),
                  ],
                )
            ),
            Expanded(
                flex: 9,
                child: ListView.builder(
                  itemCount: toDoList.length,
                    itemBuilder: (context, index){
                      return Card(
                        child: sizeBox50(
                          Row(
                            children: [
                              Expanded(
                                flex: 8,
                                  child: Container(
                                    color: Colors.white,
                                    child: Text("${toDoList[index]["item"]}"),
                                  )
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    color: Colors.white,
                                    child: TextButton(
                                      child: Icon(Icons.delete),
                                      onPressed: (){
                                        RemoveDataFromList(index);
                                      },
                                    ),
                                  )
                              ),
                            ],
                          )
                        )
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

