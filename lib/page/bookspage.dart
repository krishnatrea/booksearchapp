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
      backgroundColor: Colors.blueGrey[300],
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: SingleChildScrollView(
            // physics: ,
            scrollDirection: Axis.horizontal,
            child: Row(
              // crossAxisCount: 2,
              children: [
                for (Books book in books!.listofbooks!)
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Material(
                        borderRadius: BorderRadius.circular(30),
                        elevation: 5,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(book.volumeInfo!.imageLink!.thumbnail!,height: 150, ),
                          ],
                        ),
                      ),
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}