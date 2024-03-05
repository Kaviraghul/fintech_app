// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AssetGridTile {
  final String icon;
  final String title;
  final AssetGridSubtitle subtitle;
  AssetGridTile({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  AssetGridTile copyWith({
    String? icon,
    String? title,
    AssetGridSubtitle? subtitle,
  }) {
    return AssetGridTile(
      icon: icon ?? this.icon,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'icon': icon,
      'title': title,
      'subtitle': subtitle.toMap(),
    };
  }

  factory AssetGridTile.fromMap(Map<String, dynamic> map) {
    return AssetGridTile(
      icon: map['icon'] as String,
      title: map['title'] as String,
      subtitle:
          AssetGridSubtitle.fromMap(map['subtitle'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory AssetGridTile.fromJson(String source) =>
      AssetGridTile.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'AssetGridTile(icon: $icon, title: $title, subtitle: $subtitle)';

  @override
  bool operator ==(covariant AssetGridTile other) {
    if (identical(this, other)) return true;

    return other.icon == icon &&
        other.title == title &&
        other.subtitle == subtitle;
  }

  @override
  int get hashCode => icon.hashCode ^ title.hashCode ^ subtitle.hashCode;
}

class AssetGridSubtitle {
  final String icon;
  final String? money;
  AssetGridSubtitle({
    required this.icon,
    this.money,
  });

  AssetGridSubtitle copyWith({
    String? icon,
    String? money,
  }) {
    return AssetGridSubtitle(
      icon: icon ?? this.icon,
      money: money ?? this.money,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'icon': icon,
      'money': money,
    };
  }

  factory AssetGridSubtitle.fromMap(Map<String, dynamic> map) {
    return AssetGridSubtitle(
      icon: map['icon'] as String,
      money: map['money'] != null ? map['money'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AssetGridSubtitle.fromJson(String source) =>
      AssetGridSubtitle.fromMap(json.decode(source) as Map<String, dynamic>);
}
