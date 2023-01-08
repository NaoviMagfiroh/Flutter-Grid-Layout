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
      body: ListView.builder(
        itemCount: 50,
        padding: EdgeInsets.all(20),
        itemBuilder: (context, index) {
          if (index % 2 == 0) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Hello ${index + 1}",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.only(bottom: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    color: Colors.amber,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Hello ${index + 1}",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
