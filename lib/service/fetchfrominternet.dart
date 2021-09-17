import 'dart:convert';

import '/models/bookdata.dart';

import '/models/loginInfomodels.dart';
import 'package:http/http.dart' as http;


  Future<LoginApiResponse> apiCallLogin(LoginInfo info) async {
    
    var url = Uri.parse('https://reqres.in/api/login');
    http.Response response = await http.post(url, body: info.tojson());
   
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    Map<String, dynamic> data = jsonDecode(response.body);
    return LoginApiResponse.fromjson(data);
  }

  Future<ListofBooks> fetchBooks() async {
    
    var url = Uri.parse('https://www.googleapis.com/books/v1/volumes?q=php');
    http.Response response = await http.get(url);
   
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
   
    Map<String, dynamic> data = jsonDecode(response.body);
    return ListofBooks.fromMap(data);
  }