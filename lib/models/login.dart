
class SingIn {
  final int id;
  final String first_name;
  final String last_name;
  final String email;
  

  SingIn({
     this.id,
     this.first_name,
     this.last_name,
     this.email,
  });
   factory SingIn.fromJson(Map<String, dynamic> json) {
    return SingIn(
      
      id: json['id'] as int,
      first_name: json['first_name'] as String,
      last_name:json['last_name'] as String,
      email: json['email'] as String,
    );
  }
}