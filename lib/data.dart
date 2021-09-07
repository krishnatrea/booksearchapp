

Map<String , dynamic>  map1 = {
    "name": "harshit",
    "class" : "2nd",
    "subjects" : {
        "sub1" : "english",
        "sub2" : "hindi"
    },
    "lang" : ["engish", "hindi"] ,
    "age" : 10
};

Map<String , dynamic>  map2 = {
    "name": "Anshul",
    "class" : "3rd",
    "subjects" : {
        "sub1" : "english",
        "sub2" : "hindi"
    },
    "lang" : ["engish", "hindi"] ,
    "age" : 8
};

class Class2nd {
  String? name;
  String? clas;
  Map<String,String>? subjects ;
  List<String>? lang;
  int? ag; 

  Class2nd({this.ag, this.name , this.subjects , this.lang});

  factory Class2nd.fromjson(Map<String, dynamic> map){
    return Class2nd(
      ag: map['age'],
      name:  map['name'],
      subjects: map['subject'],
      lang: map['lang']
    );
  }
}


Class2nd harshit = Class2nd.fromjson(map1);
Class2nd anshul = Class2nd.fromjson(map2);


// List<Class2nd> list = [hashit, anshul];