<<<<<<< HEAD
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class DetalhesAlbum extends StatelessWidget {
  final List albumMusics;
  final String albumName;
  final String image;
  const DetalhesAlbum(
      {Key? key,
      required this.albumMusics,
      required this.albumName,
      required this.image})
=======
import 'package:flutter/material.dart';

class DetalhesAlbum extends StatelessWidget {
  final String album;
  final String image;
  const DetalhesAlbum({Key? key, required this.album, required this.image})
>>>>>>> 24c6041a03a1fb1a3d5ab926ec61075c00ede5ae
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      // appBar: AppBar(title: Text(albumName)),
      body: Container(
        width: 400,
        height: 800,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: TextField(
                      decoration:
                          InputDecoration(hintText: "Procurar nesta Playllist"),
                    ),
                  ),
                  Spacer(),
                  TextButton(onPressed: () {}, child: Text("Classificar")),
                ],
              ),
            ),
            Image.network(
              image,
              width: 200,
              height: 200,
            ),
            Text(
              albumName,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
=======
        appBar: AppBar(title: Text(album)),
        body: Column(
          children: [
            Text(
              "Album é $album",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            Image.network(
              image,
              width: 100,
              height: 100,
            )
          ],
        ));
>>>>>>> 24c6041a03a1fb1a3d5ab926ec61075c00ede5ae
  }
}
