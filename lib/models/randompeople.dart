class Randomdata {
  final String gender;
  final String title;
  final String first;
  final String last;
  final String city;
  final String state;
  final String country;
  final String email;
  final String cell;
  final String dob;
  final int age;
  final String phone;
  final String image;

  Randomdata({
    required this.first,
    required this.gender,
    required this.title,
    required this.last,
    required this.city,
    required this.state,
    required this.country,
    required this.dob,
    required this.age,
    required this.phone,
    required this.email,
    required this.cell,
    required this.image,
  });
  factory Randomdata.fromMap({required Map data}) {
    return Randomdata(
        first: data["results"][0]["name"]["first"],
        gender: data["results"][0]["gender"],
        title: data["results"][0]["name"]["title"],
        last: data["results"][0]["name"]["last"],
        city: data["results"][0]["location"]["city"],
        state: data["results"][0]["location"]["state"],
        country: data["results"][0]["location"]["country"],
        dob: data["results"][0]["dob"]["date"],
        age: data["results"][0]["dob"]["age"],
        cell:data["results"][0]["cell"],
        email: data["results"][0]["email"],
        phone: data["results"][0]["phone"],
        image: data["results"][0]["picture"]["medium"]);
  }
}
