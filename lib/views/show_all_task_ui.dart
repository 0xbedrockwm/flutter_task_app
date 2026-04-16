import 'package:flutter/material.dart';
import 'package:flutter_task_app/views/add_task_ui.dart';

class ShowAllTaskUi extends StatefulWidget {
  const ShowAllTaskUi({super.key});

  @override
  State<ShowAllTaskUi> createState() => _ShowAllTaskUiState();
}

class _ShowAllTaskUiState extends State<ShowAllTaskUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'TASK ME',
          style: TextStyle(color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //เปิดไปหน้า ad task_ui แบบย้อนกลับได้
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddTaskUi(),
            ),
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue[900],
      ),
      // ตำแหน่งของ floatingAction
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
