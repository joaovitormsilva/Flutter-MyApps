import 'package:flutter/material.dart';

class SearchPag extends StatefulWidget {
  const SearchPag({super.key});

  @override
  State<SearchPag> createState() => _SearchPagState();
}

class _SearchPagState extends State<SearchPag> {
  @override
  Widget build(BuildContext context) {
    final nomes = [
      "Podcasts",
      "Ao vivo",
      "Para você",
      "Novos",
      "Brasil",
      "Sertanejo",
      "Funk",
      "Pop",
      "Paradas",
      "Hip Hop",
      "Brasil",
      "Sertanejo",
      "Funk",
      "Pop",
      "Paradas",
      "Hip Hop"
    ];

    final imagens = [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrpxzyJ7-iq-Ca1tVG55igPgJCUmj-_SoAtw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4eLoyE_W8gy9lfYjpNA9EE4BfUaxhrAFo3g&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh8C0iWcrErha2skkHDGsY4ccAfelARtIksQ&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLkjCxXq5Wf2CCbxhsGrjleDfcX4nOfZFr7oeoZZb8uJysdxa_ZXNBkgkFmPGC5jtzjWw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2e4Q3fHtBuFAbN7RytL38r2rFk0PeuOg9IA&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrpxzyJ7-iq-Ca1tVG55igPgJCUmj-_SoAtw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4eLoyE_W8gy9lfYjpNA9EE4BfUaxhrAFo3g&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh8C0iWcrErha2skkHDGsY4ccAfelARtIksQ&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLkjCxXq5Wf2CCbxhsGrjleDfcX4nOfZFr7oeoZZb8uJysdxa_ZXNBkgkFmPGC5jtzjWw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrpxzyJ7-iq-Ca1tVG55igPgJCUmj-_SoAtw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4eLoyE_W8gy9lfYjpNA9EE4BfUaxhrAFo3g&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh8C0iWcrErha2skkHDGsY4ccAfelARtIksQ&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLkjCxXq5Wf2CCbxhsGrjleDfcX4nOfZFr7oeoZZb8uJysdxa_ZXNBkgkFmPGC5jtzjWw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrpxzyJ7-iq-Ca1tVG55igPgJCUmj-_SoAtw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4eLoyE_W8gy9lfYjpNA9EE4BfUaxhrAFo3g&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh8C0iWcrErha2skkHDGsY4ccAfelARtIksQ&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLkjCxXq5Wf2CCbxhsGrjleDfcX4nOfZFr7oeoZZb8uJysdxa_ZXNBkgkFmPGC5jtzjWw&usqp=CAU",
    ];

    List<Color> customColors = const [
      Color(0xFF00BFFF), // Azul claro
      Color(0xFFFFA500), // Laranja
      Color(0xFF8B0000), // Vermelho escuro
      Color(0xFF228B22), // Verde floresta
      Color(0xFF9932CC), // Roxo
      Color(0xFF00CED1), // Turquesa
      Color(0xFF00BFFF),
      Color(0xFF7FFF00),
      Color(0xFFFFD700),
      Color(0xFFBA55D3),
      Color(0xFF00BFFF), // Azul claro
      Color(0xFFFFA500), // Laranja
      Color(0xFF8B0000), // Vermelho escuro
      Color(0xFF228B22), // Verde floresta
      Color(0xFF9932CC), // Roxo
      Color(0xFF00CED1), // Turquesa
    ];
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Column(children: <Widget>[
        const Padding(
            padding: EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 10)),
        Container(
          padding: const EdgeInsets.only(top: 16, left: 8),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Buscar",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        const Padding(padding: EdgeInsets.only(top: 20)),
        const TextFieldWidget(),
        const Padding(
          padding: EdgeInsets.only(left: 8, top: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Navegue por seções",
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
        ),
        ListaDuasColunasItensWidget(
            screenWidth: screenWidth,
            nomes: nomes,
            customColors: customColors,
            imagens: imagens,
            screenHeight: screenHeight),
        const Padding(padding: EdgeInsets.all(8))
      ]),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: const TextField(
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
              fillColor: Colors.black,
              hoverColor: Colors.black,
              focusColor: Colors.black,
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search),
              hintText: 'O que você quer ouvir?'),
        ),
      ),
    );
  }
}

class ListaDuasColunasItensWidget extends StatelessWidget {
  const ListaDuasColunasItensWidget({
    Key? key,
    required this.screenWidth,
    required this.nomes,
    required this.customColors,
    required this.imagens,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final List<String> nomes;
  final List<Color> customColors;
  final List<String> imagens;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 0),
      height: 1050, // Defina a altura desejada
      width: screenWidth,
      // Defina a largura para ocupar todo o espaço disponível
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        // Define um padding externo para o GridView
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Número de colunas
          crossAxisSpacing: 10, // Espaçamento horizontal entre os containers
          mainAxisSpacing: 10, // Espaçamento vertical entre os containers
          childAspectRatio: 1.7,
        ),
        itemCount: nomes.length,
        itemBuilder: (BuildContext context, int index) {
          final cor = customColors[index % customColors.length];
          final nome = nomes[index];

          return GestureDetector(
            onTap: () {
              // Lidar com o toque no botão
            },
            child: Container(
              clipBehavior: Clip.hardEdge,
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: cor.withOpacity(0.85),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      nome,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      imagens[index],
                      width: screenWidth * 0.23,
                      height: screenHeight * 0.3,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
