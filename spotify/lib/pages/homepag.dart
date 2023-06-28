import 'package:flutter/material.dart';
import 'package:spotify/pages/selected_pag.dart';

class HomePag extends StatelessWidget {
  const HomePag({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const Padding(padding: EdgeInsets.only(top: 10)),
          const BomDiaContainerWidget(),
          //Padding(padding: EdgeInsets.only(top: 10)),
          const NovoAlbumWidget(),
          const Padding(padding: EdgeInsets.only(top: 10)),
          const TituloScrollWidget(),
          ScrollListWidget(),
          const Padding(padding: EdgeInsets.only(top: 10)),
        ],
      ),
    );
  }
}

class TituloScrollWidget extends StatelessWidget {
  const TituloScrollWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color cores = Colors.white;
    const double fontSize = 25.0;
    const FontWeight fontWeight = FontWeight.w600;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: screenWidth * 0.95,
      child: const Text(
        "Lavando a louça com hits",
        style: TextStyle(
          color: cores,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}

class ScrollListItemWidget extends StatelessWidget {
  const ScrollListItemWidget(
      {required this.title, required this.imageUrl, Key? key})
      : super(key: key);

  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final imageWidth = screenWidth * 0.4;
    final titleFontSize = screenWidth * 0.038;
    return SizedBox(
      width: imageWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(
            imageUrl,
            width: imageWidth,
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
          Text(
            title,
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.grey.withOpacity(0.8),
                fontSize: titleFontSize,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}

class ScrollListWidget extends StatelessWidget {
  ScrollListWidget({Key? key}) : super(key: key);

  final List<Map<String, String>> items = [
    {
      "title": "Rock",
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC__b59cmNIYsXIFix1711XRyB_2bDsPLgTQ&usqp=CAU"
    },
    {
      "title": "Pop",
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC__b59cmNIYsXIFix1711XRyB_2bDsPLgTQ&usqp=CAU"
    },
    {
      "title": "Jazz",
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC__b59cmNIYsXIFix1711XRyB_2bDsPLgTQ&usqp=CAU"
    },
    {
      "title": "Hip hop",
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC__b59cmNIYsXIFix1711XRyB_2bDsPLgTQ&usqp=CAU"
    },
    {
      "title": "Classical",
      "imageUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC__b59cmNIYsXIFix1711XRyB_2bDsPLgTQ&usqp=CAUl"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      width: 400,
      child: ListView.builder(
        padding: const EdgeInsets.only(right: 10),
        primary: false,
        shrinkWrap: true,
        //physics: NeverScrollableScrollPhysics(),
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ScrollListItemWidget(
              title: item["title"]!,
              imageUrl: item["imageUrl"]!,
            ),
          );
        },
      ),
    );
  }
}

class NovoAlbumWidget extends StatelessWidget {
  const NovoAlbumWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
          child: CircleAvatarRowWidget(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 16),
          child: Container(
            width: screenwidth,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.12),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSK9P-J1gYxXi0OrUw46TjtqfWLbqPDC9chSVhWqiN-es-BL0SjAh9KJTxKxMrlRz9CGgo&usqp=CAU",
                    width: screenwidth * 0.4,
                    alignment: Alignment.centerLeft,
                  ),
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: AlbumDetails(
                    albumTitle: "Até o fim do mundo",
                    albumArtist: "girl in red",
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CircleAvatarRowWidget extends StatelessWidget {
  const CircleAvatarRowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
              "https://i1.sndcdn.com/artworks-h4LlEnMSHkoB0y0y-erVpsQ-t500x500.jpg"),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text(
              "NOVO ÁLBUM DE",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "Bailão que fala",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class AlbumDetails extends StatelessWidget {
  const AlbumDetails({
    Key? key,
    required this.albumTitle,
    required this.albumArtist,
  }) : super(key: key);

  final String albumTitle;
  final String albumArtist;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const SizedBox(height: 10),
        Text(
          albumTitle,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          albumArtist,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border),
              color: Colors.grey.withOpacity(0.7),
              iconSize: 30,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.play_circle_fill),
              color: Colors.white,
              iconSize: 50,
            ),
          ],
        ),
      ],
    );
  }
}

class BomDiaContainerWidget extends StatelessWidget {
  const BomDiaContainerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.47,
      width: screenWidth,
      padding: const EdgeInsets.only(top: 70, left: 8, right: 8),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.purple, Colors.black],
            begin: Alignment.topLeft,
            end: Alignment.centerLeft),
      ),
      child: Column(
        children: const <Widget>[
          BomDiaRow(),
          Padding(padding: EdgeInsets.all(10)),
          MaisVistosWidget(),
        ],
      ),
    );
  }
}

class MaisVistosWidget extends StatelessWidget {
  const MaisVistosWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    Map<String, List<String>> albumsMusicas = {
      'Ride The Lightning': ['rideMusic', '1'],
      "Load": ['rideMusic', '2'],
      "Master of Puppets": ['rideMusic', '3'],
      "The Black Album": ['rideMusic', '4'],
      "Master of ": ['rideMusic', '5'],
      "The Black ": ['rideMusic', '6'],
    };
    List<String> albumsName = albumsMusicas.keys.toList();
=======
    List<String> albums = [
      "Ride The Lightning",
      "Load",
      "Master of Puppets",
      "The Black Album",
      "Master of Puppets",
      "The Black Album",
    ];
>>>>>>> 24c6041a03a1fb1a3d5ab926ec61075c00ede5ae
    List<String> images = [
      "https://upload.wikimedia.org/wikipedia/pt/f/fc/Ride_the_Lightning.jpg",
      "https://upload.wikimedia.org/wikipedia/pt/thumb/3/32/Load.jpg/220px-Load.jpg",
      "https://upload.wikimedia.org/wikipedia/pt/4/4d/Master_of_Puppets.jpg",
      "https://upload.wikimedia.org/wikipedia/pt/6/6f/Metallica_%C3%A1lbum.jpg",
      "https://upload.wikimedia.org/wikipedia/pt/4/4d/Master_of_Puppets.jpg",
      "https://upload.wikimedia.org/wikipedia/pt/6/6f/Metallica_%C3%A1lbum.jpg",
    ];

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: 250,
      width: screenWidth,
      child: GridView.builder(
        padding: const EdgeInsets.all(0),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Número de colunas
          crossAxisSpacing: 10, // Espaçamento horizontal entre os containers
          mainAxisSpacing: 10, // Espaçamento vertical entre os containers
          childAspectRatio: 2.5,
        ),
<<<<<<< HEAD
        itemCount: albumsName.length,
=======
        itemCount: albums.length,
>>>>>>> 24c6041a03a1fb1a3d5ab926ec61075c00ede5ae
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
<<<<<<< HEAD
                      builder: (context) => DetalhesAlbum(
                            albumMusics: albumsMusicas[albumsName[index]]!,
                            albumName: albumsName[index],
                            image: images[index],
                          )),
=======
                      builder: (context) =>
                          DetalhesAlbum(album: albums[index], image: images[index],)),
>>>>>>> 24c6041a03a1fb1a3d5ab926ec61075c00ede5ae
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(3.2),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey.withOpacity(0.12),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          images[index],
                          width: screenWidth * 0.17,
                          height: 90,
                          alignment: Alignment.centerLeft,
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(left: 8)),
                      Flexible(
                        child: Text(
<<<<<<< HEAD
                          albumsName[index],
=======
                          albums[index],
>>>>>>> 24c6041a03a1fb1a3d5ab926ec61075c00ede5ae
                          overflow: TextOverflow.clip,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ));
        },
      ),
    );
  }
}

class BomDiaRow extends StatelessWidget {
  const BomDiaRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<IconData> iconList = [
      Icons.notifications_none_outlined,
      Icons.av_timer,
      Icons.settings_outlined,
    ];

    List<Widget> generateIcons() {
      return iconList.map((iconData) {
        return Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(
            iconData,
            color: Colors.white,
            size: 35,
          ),
        );
      }).toList();
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(left: 4.0),
          child: Text(
            "Bom dia",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 30,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: generateIcons(),
        ),
      ],
    );
  }
}
