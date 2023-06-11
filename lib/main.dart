import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Photo Galary",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 16,
            ),
            Text(
              "Welcome To My Photo Gallery!",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Search Photo",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                _photoButton(
                    context,
                    "https://opsg-img-cdn-gl.heytapimg.com/epb/202207/17/zIfbzzLY6mUmbS47.png",
                    "Oppo"),
                _photoButton(
                    context,
                    "https://cdn.pixabay.com/photo/2014/08/05/10/30/iphone-410324_1280.jpg",
                    "iPhone"),
                _photoButton(
                    context,
                    "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1675265562-samsung-galaxy-a14-1675265546.jpg?crop=1xw:1xh;center,top&resize=980:*",
                    "Samsung"),
                _photoButton(
                    context,
                    "https://i0.wp.com/www.smartprix.com/bytes/wp-content/uploads/2023/04/Xiaomi-13-Ultra-5K1-scaled.jpg?ssl=1",
                    "Xiaomi"),
                _photoButton(
                    context,
                    "https://i0.wp.com/www.smartprix.com/bytes/wp-content/uploads/2022/05/Moto-Edge-30-review_-6.jpg?fit=1337%2C896&ssl=1",
                    "Motorola"),
                _photoButton(
                    context,
                    "https://www.shutterstock.com/image-photo/illustrative-editorial-image-minsk-belarus-260nw-778932700.jpg",
                    "Nokia"),
              ],
            ),
            SizedBox(height: 16.0),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text('Sample Photo 1'),
                  subtitle: Text('This is a sample photo'),
                  onTap: () {
                    final snackBar =
                        SnackBar(content: Text("Tapped on this sample image"));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text('Sample Photo 2'),
                  subtitle: Text('This is another sample photo'),
                  onTap: () {
                    final snackBar =
                        SnackBar(content: Text("Tapped on this sample image"));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text('Sample Photo 3'),
                  subtitle: Text('One more sample photo'),
                  onTap: () {
                    final snackBar =
                        SnackBar(content: Text("Tapped on this sample image"));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final snackBar =
              SnackBar(content: Text('Photos Uploaded Successfully!'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Icon(Icons.cloud_upload),
      ),
    );
  }

  Widget _photoButton(BuildContext context, String imageUrl, String caption) {
    return OutlinedButton(
        onPressed: () {
          final snackBar = SnackBar(content: Text('Clicked on photo!'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              width: 100,
              height: 100,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              caption,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ));
  }
}
