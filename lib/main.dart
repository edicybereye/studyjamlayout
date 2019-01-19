import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.red),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var imgLoading = "img/loading.gif";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 50.0,
        width: 50.0,
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              "https://vignette.wikia.nocookie.net/naruto/images/0/09/Naruto_newshot.png/revision/latest?cb=20170621101134"),
        ),
      ),
      appBar: AppBar(
        title: InkWell(onTap: () {}, child: Text("Project")),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.lock_open),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.lock_open),
            onPressed: () {},
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://vignette.wikia.nocookie.net/naruto/images/0/09/Naruto_newshot.png/revision/latest?cb=20170621101134"),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          FadeInImage.assetNetwork(
            placeholder: imgLoading,
            image: "http://www.aljanh.net/data/archive/img/2231164042.jpeg",
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            children: <Widget>[
              CardButton(
                icon: Icons.home,
                text: "Home",
                onTap: () {
                  print("Home");
                },
              ),
              CardButton(
                icon: Icons.account_circle,
                text: "Profile",
                onTap: () {
                  print("Profile");
                },
              ),
              CardButton(
                icon: Icons.settings,
                text: "Setting",
                onTap: () {
                  print("Profile");
                },
              ),
            ],
          ),
          Text("data"),
          Text("data"),
          Text("data"),
          Text("data"),
          Text("data"),
          Container(
            height: 150.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                Icon(
                  Icons.home,
                  size: 100.0,
                ),
                Icon(
                  Icons.home,
                  size: 100.0,
                ),
                Icon(
                  Icons.home,
                  size: 100.0,
                ),
                Icon(
                  Icons.home,
                  size: 100.0,
                ),
                Icon(
                  Icons.home,
                  size: 100.0,
                ),
                Icon(
                  Icons.home,
                  size: 100.0,
                ),
              ],
            ),
          ),
          Text("data"),
          Text("data"),
          Text("data"),
          Text("data"),
          Text("data"),
        ],
      ),
    );
  }
}

class CardButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onTap;
  CardButton({this.text, this.icon, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon),
            Text(text),
          ],
        ),
      ),
    );
  }
}
