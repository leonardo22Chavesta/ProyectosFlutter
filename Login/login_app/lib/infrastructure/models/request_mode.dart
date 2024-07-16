class RequestMode {
    String email;
    String password;

    RequestMode({
        required this.email,
        required this.password,
    });

    factory RequestMode.fromJsonMap(Map<String, dynamic> json) => RequestMode(
        email: json["email"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
    };
}
