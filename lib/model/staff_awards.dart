class StaffAwards {
  final String timeCreate;
  final String awardStart;
  final String uid;
  final String type;
  final String id;

  StaffAwards(this.timeCreate, this.awardStart, this.uid, this.type, this.id);

  StaffAwards.fromJson(Map<String, dynamic> json)
      : timeCreate = json["time_create"],
        awardStart = json["award_start"],
        uid = json["uid"],
        type = json["type"],
        id = json["id"];
}
