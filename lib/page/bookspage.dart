import 'package:booksearchapp/models/bookdata.dart';
import 'package:flutter/material.dart';
class Bookspage extends StatefulWidget {
  Bookspage({Key? key,required this.books}) : super(key: key);
  ListofBooks books;
  @override
  _BookspageState createState() => _BookspageState(books: books);
}

class _BookspageState extends State<Bookspage> {
  ListofBooks? books;
  _BookspageState({required this.books});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              for (Books book in books!.listofbooks!)
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: ListTile(title: Text(book.volumeInfo!.title!), leading: Image.network(book.volumeInfo!.imageLink!.smallThumbnail!),),
                )
            ],
          ),
        ),
      ),
    );
  }
}