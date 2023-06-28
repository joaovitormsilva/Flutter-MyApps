import 'package:flutter/material.dart';

class LibraryPag extends StatefulWidget {
  const LibraryPag({super.key});

  @override
  State<LibraryPag> createState() => _LibraryPagState();
}

class _LibraryPagState extends State<LibraryPag> {
  @override
  Widget build(BuildContext context) {
    final myProducts = {
      'Músicas Curtidas': 'Playlist - 93 músicas',
      "Funk para festas": 'Playlist - João Vitor',
      "Phonk para treino": 'Playlist - TIDE UP',
      "Rádio de Mc Pipokinha": 'Playlist - Hear Hear',
      "Trap para treinar": 'Playlist - mt',
      "Playlit 3": 'Playlist - New',
      "Playlist do rock": 'Playlist - Full Rock',
      "O indivíduo": 'Podcast - Globo',
      "Podcasts legais": 'Podcast - João Vitor',
    };

    final imagens = [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Earlyalbum1.jpg/250px-Earlyalbum1.jpg",
      "https://goimage-website.s3-sa-east-1.amazonaws.com/products/11000014/AlbumBabytime_Newborn_512.png",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9LYNr-BOtiX-57XaOl_gFGg0h35o07ludTA&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYjscnysDiFeQjIGX1_HNfLYnGyOWLswq8xg&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpwy2k865o314g6FIwrwtetHJ0zEnnCd7nIA&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO12YqFW-sb1IRv92i8Dx_1DwyHzTUodGbhg&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpjWGu0QgHS5RR0QILvpF7PxpF7DT_IcScN6LydSOl9neY1maCPfAUVuwdnTiSxjM4J68&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHBLCFhhuHwBy6cQ_yLo3DulN0jbJdzpyG3YoB7XGDGY7rBU025Y0YIq22a2YXgylEamc&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1mhPu6ulbryQTfi1YneOIXqExmH2S45wSdA&usqp=CAU"
    ];
    final icone = Icons.arrow_downward;
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 50)),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 10, top: 30, bottom: 10),
              child: Text(
                "Sua Biblioteca",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(
            height: screenHeight,
            child: GridView.builder(
              padding: const EdgeInsets.only(bottom: 150, left: 10, right: 10),
              shrinkWrap: true,
              // Define um padding externo para o GridView
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, // Número de colunas
                crossAxisSpacing:
                    10, // Espaçamento horizontal entre os containers
                mainAxisSpacing: 10, // Espaçamento vertical entre os containers
                childAspectRatio: 3.5,
              ),
              itemCount: myProducts.length,
              itemBuilder: (BuildContext context, int index) {
                final nome = myProducts.keys.elementAt(index);
                final sobreNome = myProducts.values.elementAt(index);
                final images = imagens[index];
                return GestureDetector(
                  onTap: () {
                    // Lidar com o toque no botão
                  },
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      // color: Colors.amber,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(
                          images,
                          width: screenWidth * 0.23,
                          height: screenHeight * 0.12,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                nome,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                const Padding(
                                    padding: EdgeInsets.only(left: 8)),
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF1bd954),
                                    shape: BoxShape.circle,
                                  ),
                                  width: 18,
                                  height: 18,
                                  child: Icon(
                                    icone,
                                    size: 15,
                                  ),
                                ),
                                const Padding(
                                    padding: EdgeInsets.only(left: 4)),
                                Text(
                                  sobreNome,
                                  style: TextStyle(
                                      color: Colors.grey.withOpacity(0.9),
                                      fontSize: 14),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          //Padding(padding: EdgeInsets.all(50))
        ],
      ),
    );
  }
}
