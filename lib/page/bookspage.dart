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
            scrollDirection: Axis.vertical,
            child: Column(
              // crossAxisCount: 2,
              children: [
                for (Books book in books!.listofbooks!)
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.white60,
                      borderRadius: BorderRadius.circular(20)),
                    // width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(image: NetworkImage(book.volumeInfo!.imageLink!.thumbnail!,)),
                          ),
                          Container(
                            width: 200,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(book.volumeInfo!.title! , overflow: TextOverflow.fade, maxLines: 3, style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
                                Text(book.volumeInfo!.authors![0] , overflow: TextOverflow.clip,),      
                                // Text(book.volumeInfo!.subtitle! , overflow: TextOverflow.clip,),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                  // Padding(
                  //   padding: const EdgeInsets.all(12),
                  //   child: Container(
                  //     height: 200,
                  //     width: 200,
                  //     child: Material(
                  //       borderRadius: BorderRadius.circular(30),
                  //       elevation: 5,
                  //       child: Column(
                  //         // mainAxisAlignment: MainAxisAlignment.start,
                  //         // crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           Image.network(book.volumeInfo!.imageLink!.thumbnail!,height: 150, ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}