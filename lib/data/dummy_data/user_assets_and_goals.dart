import 'package:fintech_app/presentation/dashboard/components/grid_view/grid_view_item.model.dart';

const userAssetsDummyData = [
  {
    "icon": "icon_0",
    "title": "title_0",
    "subtitle": {"icon": "subtitle_icon_0", "money": "subtitle_money_0"}
  },
  {
    "icon": "icon_1",
    "title": "title_1",
    "subtitle": {"icon": "subtitle_icon_1", "money": "subtitle_money_1"}
  },
  {
    "icon": "icon_2",
    "title": "title_2",
    "subtitle": {"icon": "subtitle_icon_2", "money": "subtitle_money_2"}
  },
  {
    "icon": "icon_3",
    "title": "title_3",
    "subtitle": {"icon": "subtitle_icon_3", "money": "subtitle_money_3"}
  },
  {
    "icon": "icon_4",
    "title": "title_4",
    "subtitle": {"icon": "subtitle_icon_4", "money": "subtitle_money_4"}
  },
  {
    "icon": "icon_5",
    "title": "title_5",
    "subtitle": {"icon": "subtitle_icon_5", "money": "subtitle_money_5"}
  },
  {
    "icon": "icon_6",
    "title": "title_6",
    "subtitle": {"icon": "subtitle_icon_6", "money": "subtitle_money_6"}
  },
  {
    "icon": "icon_7",
    "title": "title_7",
    "subtitle": {"icon": "subtitle_icon_7", "money": "subtitle_money_7"}
  },
  {
    "icon": "icon_8",
    "title": "title_8",
    "subtitle": {"icon": "subtitle_icon_8", "money": "subtitle_money_8"}
  },
  {
    "icon": "icon_9",
    "title": "title_9",
    "subtitle": {"icon": "subtitle_icon_9", "money": "subtitle_money_9"}
  },
  {
    "icon": "icon_10",
    "title": "title_10",
    "subtitle": {"icon": "subtitle_icon_10", "money": "subtitle_money_10"}
  },
  {
    "icon": "icon_11",
    "title": "title_11",
    "subtitle": {"icon": "subtitle_icon_11", "money": "subtitle_money_11"}
  }
];

final List<AssetGridTile> assetsGridTitles = userAssetsDummyData.map((e) {
  return AssetGridTile.fromMap(e);
}).toList();
