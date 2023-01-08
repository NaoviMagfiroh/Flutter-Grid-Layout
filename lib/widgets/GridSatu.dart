import 'package:flutter/material.dart';

class GridSatu extends StatelessWidget {
  const GridSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        title: Text("Flutter"),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {
                print("click more");
              },
              icon: Icon(Icons.more_vert))
        ],
      ),
      body: GridView.builder(
        itemCount: 50,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 20, crossAxisSpacing: 20),
        itemBuilder: (context, index) {
          if (index % 2 == 0) {
            return Container(
                width: 150,
                height: 150,
                margin: EdgeInsets.all(20),
                color: Colors.blue,
                child: Center(
                    child: Text(
                  "hello",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                )));
          } else {
            return Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.all(20),
              color: Colors.amber,
              child: Center(
                  child: Text(
                "Hello",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              ),

            );
          }
        },
      ),
    );
  }
}