import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({
    super.key,
    required this.title,
    required this.description,
    required this.date,
    required this.color, required index,
  });

  final String title;
  final String description;
  final String date;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.withOpacity(.9),
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(title),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: CircleAvatar(
              backgroundColor: Colors.black.withOpacity(0.3),
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.edit),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    date,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 10,
              ),
             
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    description,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
             
            ],
          ),
        ),
      ),
    );
  }
}