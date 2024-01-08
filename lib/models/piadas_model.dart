import 'dart:convert';

PiadasModel piadasModelFromJson(String str) => PiadasModel.fromJson(json.decode(str));

String piadasModelToJson(PiadasModel data) => json.encode(data.toJson());

class PiadasModel {
    bool error;
    String category;
    String type;
    String setup;
    String delivery;
    Flags flags;
    bool safe;
    int id;
    String lang;

    PiadasModel({
        required this.error,
        required this.category,
        required this.type,
        required this.setup,
        required this.delivery,
        required this.flags,
        required this.safe,
        required this.id,
        required this.lang,
    });

    factory PiadasModel.fromJson(Map<String, dynamic> json) => PiadasModel(
        error: json["error"],
        category: json["category"],
        type: json["type"],
        setup: json["setup"] ?? "",
        delivery: json["delivery"] ?? "",
        flags: Flags.fromJson(json["flags"]),
        safe: json["safe"],
        id: json["id"],
        lang: json["lang"],
    );

    Map<String, dynamic> toJson() => {
        "error": error,
        "category": category,
        "type": type,
        "setup": setup,
        "delivery": delivery,
        "flags": flags.toJson(),
        "safe": safe,
        "id": id,
        "lang": lang,
    };
}

class Flags {
    bool nsfw;
    bool religious;
    bool political;
    bool racist;
    bool sexist;
    bool explicit;

    Flags({
        required this.nsfw,
        required this.religious,
        required this.political,
        required this.racist,
        required this.sexist,
        required this.explicit,
    });

    factory Flags.fromJson(Map<String, dynamic> json) => Flags(
        nsfw: json["nsfw"],
        religious: json["religious"],
        political: json["political"],
        racist: json["racist"],
        sexist: json["sexist"],
        explicit: json["explicit"],
    );

    Map<String, dynamic> toJson() => {
        "nsfw": nsfw,
        "religious": religious,
        "political": political,
        "racist": racist,
        "sexist": sexist,
        "explicit": explicit,
    };
}
