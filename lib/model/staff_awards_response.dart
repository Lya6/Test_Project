import 'package:test_project/model/staff_awards.dart';

class StaffAwardsResponse {
  final List<StaffAwards> awards;
  final int result;
  final String action;
  final int loggedIn;
  final String target;
  final String error;

  StaffAwardsResponse(this.awards, this.action, this.target, this.error,
      this.result, this.loggedIn);

  StaffAwardsResponse.fromJson(Map<String, dynamic> json)
      : awards =
            (json["data"] as List).map((i) => StaffAwards.fromJson(i)).toList(),
        result = json["result"],
        action = json["action"],
        loggedIn = json["logged_in"],
        target = json["target"],
        error = "";

  StaffAwardsResponse.withError(String errorValue)
      : awards = [],
        result = 0,
        action = "",
        loggedIn = 0,
        target = "",
        error = errorValue;
}
