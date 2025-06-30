import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'assessment 2',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: MyHomePage(),
      );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("HOME PAGE"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Container(
            margin:EdgeInsets.all(15),
            child: Text("This is assessment 2",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
        ),
          Image.network("https://static.vecteezy.com/system/resources/thumbnails/049/546/770/small_2x/stunning-high-resolution-nature-and-landscape-backgrounds-breathtaking-scenery-in-hd-free-photo.jpg",
          height:80,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => PageContent()));
            },
            child: Text('Click Here to go to the third page'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) =>Screen3()));
            },
            child: Text('Click Here to get Information'),
          ),
        ],
      ),
    );
  }
}

class PageContent extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('About')),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(18),
            child: Text(
              'Introduction',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('This is a Flutter Application',
                  style: TextStyle(fontSize: 16)),
            ],
          ),
           SizedBox(height: 30),
           ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Return to Home'),
         )
        ],
      ),
    );
  }
}

class Screen3 extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Information')),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Reach out at-',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.email),
                SizedBox(width: 10),
                Text('anjalli18@gmail.com'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.phone),
                SizedBox(width: 10),
                Text('8595917299'),
              ],
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Return'),
            )
          ],
        ),
      ),
    );
  }
}

