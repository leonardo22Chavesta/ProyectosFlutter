
class ResponseDomain {
    
    String tokenType;
    String accessToken;
    DateTime expireOn;

    ResponseDomain({
        required this.tokenType,
        required this.accessToken,
        required this.expireOn,
    });

}
