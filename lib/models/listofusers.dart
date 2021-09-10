Map<String, dynamic> map = { 
    "data": [
        {
            "id": 7,
            "email": "michael.lawson@reqres.in",
            "first_name": "Michael",
            "last_name": "Lawson",
            "avatar": "https://reqres.in/img/faces/7-image.jpg"
        },
        {
            "id": 8,
            "email": "lindsay.ferguson@reqres.in",
            "first_name": "Lindsay",
            "last_name": "Ferguson",
            "avatar": "https://reqres.in/img/faces/8-image.jpg"
        },
        {
            "id": 9,
            "email": "tobias.funke@reqres.in",
            "first_name": "Tobias",
            "last_name": "Funke",
            "avatar": "https://reqres.in/img/faces/9-image.jpg"
        },
        {
            "id": 10,
            "email": "byron.fields@reqres.in",
            "first_name": "Byron",
            "last_name": "Fields",
            "avatar": "https://reqres.in/img/faces/10-image.jpg"
        },
        {
            "id": 11,
            "email": "george.edwards@reqres.in",
            "first_name": "George",
            "last_name": "Edwards",
            "avatar": "https://reqres.in/img/faces/11-image.jpg"
        },
        {
            "id": 12,
            "email": "rachel.howell@reqres.in",
            "first_name": "Rachel",
            "last_name": "Howell",
            "avatar": "https://reqres.in/img/faces/12-image.jpg"
        }
    ],
};



List<UserDetail> generatelist(Map<String, dynamic> map){

  List<UserDetail> listuserdetails = [];
  for (Map<String,dynamic> user in map['data']) {
    UserDetail userDetail = UserDetail.fromjson(user);
    listuserdetails.add(userDetail);
  }
  return listuserdetails;
}
// -> map ->list -> userdetails list 
// -> itrate map list every individual map should change into userdetails
//
class UserDetail {
  int? id;
  String? email;
  String? firstname;
  String? lastname;
  String? avatar;

  UserDetail({this.email, this.id, this.avatar , this.firstname ,this.lastname });

  factory UserDetail.fromjson(Map<String, dynamic> map){
    return UserDetail(
      id: map['id'],
      email: map['email'],
      firstname: map['first_name'],
      lastname: map['last_name'],
      avatar: map['avatar']
    );
  }



}