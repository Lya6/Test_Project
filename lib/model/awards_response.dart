import 'awards.dart';

class AwardsResponseModel {
  final List<AwardsModel> data;
  final int result;
  final String action;
  final int loggedIn;
  final String target;
  final String error;

  AwardsResponseModel(this.error, this.data, this.result, this.action,
      this.loggedIn, this.target);

  AwardsResponseModel.fromJson(Map<String, dynamic> json)
      : data =
            (json["data"] as List).map((i) => AwardsModel.fromJson(i)).toList(),
        result = json["result"],
        action = json["action"],
        loggedIn = json["logged_in"],
        target = json["target"],
        error = "";

  AwardsResponseModel.withError(String errorValue)
      : data = [],
        result = 0,
        action = "",
        loggedIn = 0,
        target = "",
        error = errorValue;
}
