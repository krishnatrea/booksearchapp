
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
// List<UserDetails> [UserDetails(id: 7,name: "Michal" ...... ) ,UserDetails(id: 8 , name: "Lindsay" ......)
// ......... ]

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