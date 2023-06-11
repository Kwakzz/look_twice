class Rider {
  String name;
  String email;
  String phone;
  String password = "";
  String helmetNickname = "None";
  String bloodGroup = "A";

  Rider({required this.name, required this.email, required this.phone, required this.password});

  void setPassword(String password) {
    this.password = password;
  }

  void setHelmetNickname(String helmetNickname) {
    this.helmetNickname = helmetNickname;
  }

  void setBloodGroup(String bloodGroup) {
    this.bloodGroup = bloodGroup;
  }

  void setPhone(String phone) {
    this.phone = phone;
  }

  String getPassword() {
    return this.password;
  }

  String getHelmetNickname() {
    return this.helmetNickname;
  }


  String getBloodGroup() {
    return this.bloodGroup;
  }

  String getName() {
    return this.name;
  }

  String getEmail() {
    return this.email;
  }

  String getPhone() {
    return this.phone;
  }
}




List<Rider> riders = [
  Rider(name: 'David', email: "hutchful@gmail.com", phone: "0244123456", password: "123"),
  Rider(name: 'Kwaku', email: "kwakuosafo20@gmail.com", phone: "0201579150", password: "123"),

];


