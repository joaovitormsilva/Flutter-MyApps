import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  List<dynamic> _searchResults = [];

  Future<void> _searchArtists(String query) async {
    final response = await http.get(
        Uri.parse('https://api.spotify.com/v1/search?q=$query&type=artist'),
        headers: {
          'Authorization': 'Bearer <sua-chave-de-api-do-spotify>'
        });

    if (response.statusCode == 200) {
      // Se a solicitação for bem-sucedida, analise os dados JSON e atualize o estado do aplicativo
      Map<String, dynamic> data = jsonDecode(response.body);
      List<dynamic> artists = data['artists']['items'];
      setState(() {
        _searchResults = artists;
      });
    } else {
      // Se a solicitação falhar, exiba uma mensagem de erro
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Erro'),
                content: Text('Falha ao carregar os dados da API'),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context), child: Text('OK'))
                ],
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pesquisa de Artistas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                  hintText: 'Digite o nome do artista',
                  suffixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () =>
                          _searchArtists(_searchController.text))),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: _searchResults.length,
                itemBuilder: (BuildContext context, int index) {
                  final artist = _searchResults[index];
                  return ListTile(
                    leading: Image.network(artist['images'][0]['url']),
                    title: Text(artist['name']),
                    subtitle: Text(artist['genres'].join(', ')),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}