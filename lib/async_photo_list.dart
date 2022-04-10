import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AsyncPhotoListPage extends StatefulWidget {
  const AsyncPhotoListPage({ Key? key }) : super(key: key);

  @override
  State<AsyncPhotoListPage> createState() => _AsyncPhotoListPageState();
}

class _AsyncPhotoListPageState extends State<AsyncPhotoListPage> {

List<PhotoCard> _photoCardList = [];

  @override
  Widget build(BuildContext context) {
        return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.create),
          onPressed: () {
            
          },
      ),
      appBar: AppBar(
        title: const Text('Асинхронный запрос'),
      ),
      body: _photoCardList.isNotEmpty ? ListView.builder(
        itemBuilder: (context, i) {
            return getCard(
              _photoCardList[i].title,
              _photoCardList[i].url,
            );
          }
      ) : const Center(
        child: Text('List is Empty'),
      )
    );
  }
}

class PhotoCard {
  final String title;
  final String url;

  const PhotoCard({
    required this.title,
    required this.url
  });

  factory PhotoCard.fromJson(Map<String, dynamic> json) {
    return PhotoCard(
      title: json['title'],
      url: json['url']
    );
  }
}

Future<List<PhotoCard>> fetchPhotos() async {
  List<PhotoCard> result = [];
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
  if (response.statusCode == 200) {
    List<dynamic> list = json.decode(response.body);
    for (dynamic object in list) {
      result.add(PhotoCard.fromJson(object));
    }
    return result;
  } else {
    throw Exception('Failed to load album');
  }
}


Widget getCard(String title, String url) {
  return Card(
    child: Column(
      children: [
        Text(title),
      ],
    ),
  );
}