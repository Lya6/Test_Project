class AuthModel {
  final String result;
  final String action;
  final String token;

  AuthModel(this.result, this.action, this.token);

  AuthModel.fromJson(Map<String, dynamic> json)
      : result = json["result"],
        action = json["action"],
        token = json["token"];
}
