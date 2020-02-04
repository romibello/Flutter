import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Post> fetchPost() async {
  //const query = "a"; para mobile necesito hacer otras autorizaciones
  //const searchQuery = 'search?q=${""}&type=artist&limit=10';
  //const url = 'https://api.spotify.com/v1/' + searchQuery;
  const url = 'https://jsonplaceholder.typicode.com/posts';
  final response =
      await http.get(url
      //headers: {HttpHeaders.authorizationHeader: 'Bearer BQDl6nmjeVOOvKsKI85rq80jLPAEoeAhvylLMNNxcRq6hMBGufSeAd8ZdsJBSDjvJ8DTKbnxQBZ7poi7pNw'},
      );

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON.
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    //return Post.fromJson(json.decode(response.body));
  } else {
    // If that call was not successful, throw an error.
    print('fallo');
    throw Exception('Failed to load post');
  }
}

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
Future<Post> post;

  @override
  void initState() {
    super.initState();
    post = fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Post>(
            future: post,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.title);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}