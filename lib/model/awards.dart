class AwardsModel {
  final String id;
  final String idmodule;
  final String ukey;
  final String title;
  final String comment;
  final String ordered;
  final String custom;
  final String img;
  final String imgAlt;

  AwardsModel(this.id, this.idmodule, this.ukey, this.title, this.comment,
      this.ordered, this.custom, this.img, this.imgAlt);

  AwardsModel.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        idmodule = json["idmodule"],
        ukey = json["ukey"],
        title = json["title"],
        comment = json["comment"],
        ordered = json["ordered"],
        custom = json["custom"],
        img = json["img"],
        imgAlt = json["img_alt"];
}
