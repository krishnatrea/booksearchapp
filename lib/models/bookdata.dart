
class ListofBooks{
  List<Books>? listofbooks;
  ListofBooks({
    this.listofbooks,
  });
  

factory ListofBooks.fromMap(Map<String, dynamic> map) {

    return ListofBooks(
      listofbooks: generatelistofbooks(map),
    );

  }
}

List<Books> generatelistofbooks(Map<String, dynamic> map){
  List<Books> ind = [];
    for(Map<String,dynamic> i in map['items']){
      Books m = Books.fromMap(i);
      ind.add(m);
    }
    return ind;
}

class Books {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  Books({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
  });

  factory Books.fromMap(Map<String, dynamic> map) {
    return Books(
      kind: map['kind'],
      id: map['id'],
      etag: map['etag'],
      selfLink: map['selfLink'],
      volumeInfo: VolumeInfo.fromMap(map['volumeInfo']),
    );
  }
}

class VolumeInfo {
  String? title;
  String? subtitle;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? discription;
  List<IndustryIdentifiers>? industryIdentifiers;
  ImageLink? imageLink;
  VolumeInfo({
    this.title,
    this.subtitle,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.discription,
    this.industryIdentifiers,
    this.imageLink,
  });

  factory VolumeInfo.fromMap(Map<String, dynamic> map) {
    // List<IndustryIdentifiers> ind = [];
    // for(Map<String,dynamic> i in map['industryIdentifiers']){
    //   IndustryIdentifiers m = IndustryIdentifiers.fromMap(i);
    //   ind.add(m);
    // }
    return VolumeInfo(
      title: map['title'],
      subtitle: map['subtitle'],
      authors: List<String>.from(map['authors']),
      publisher: map['publisher'],
      publishedDate: map['publishedDate'],
      discription: map['discription'],
      industryIdentifiers: [],
      imageLink: ImageLink.fromMap(map['imageLinks']),
    );
  }
}


class ImageLink {
  String? smallThumbnail;
  String? thumbnail;
  ImageLink({
    this.smallThumbnail,
    this.thumbnail,
  });

  factory ImageLink.fromMap(Map<String, dynamic> map) {
    return ImageLink(
      smallThumbnail: map['smallThumbnail'],
      thumbnail: map['thumbnail'],
    );
  }
}

class IndustryIdentifiers {

}
