

class ResponseModel {
    String tokenType;
    String accessToken;
    DateTime expireOn;

    ResponseModel({
        required this.tokenType,
        required this.accessToken,
        required this.expireOn,
    });

    factory ResponseModel.fromJsonMap(Map<String, dynamic> json) => ResponseModel(
        tokenType: json["tokenType"],
        accessToken: json["accessToken"],
        expireOn: DateTime.parse(json["expireOn"]),
    );

    Map<String, dynamic> toJson() => {
        "tokenType": tokenType,
        "accessToken": accessToken,
        "expireOn": expireOn.toIso8601String(),
    };

    // Response toMessageEntity() => Response(
    //   tokenType: tokenType,
    //   accessToken:accessToken,
    //   expireOn: expireOn
    //   );
}
