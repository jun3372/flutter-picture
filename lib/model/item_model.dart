// 搜索单个模型
class ItemModel {
  String id;
  String title;
  String url;
  String width;
  String height;
  String catalog;
  String folder;
  String number;
  String content;

  ItemModel({
    this.id,
    this.title,
    this.url,
    this.width,
    this.height,
    this.catalog,
    this.folder,
    this.number,
    this.content,
  });

  ItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    url = json['url'];
    width = json['width'];
    height = json['height'];
    catalog = json['catalog'];
    folder = json['folder'];
    number = json['number'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    // ignore: non_constant_identifier_names
    final Map<String, dynamic> ItemModel = new Map<String, dynamic>();
    ItemModel['id'] = this.id;
    ItemModel['title'] = this.title;
    ItemModel['url'] = this.url;
    ItemModel['width'] = this.width;
    ItemModel['height'] = this.height;
    ItemModel['catalog'] = this.catalog;
    ItemModel['folder'] = this.folder;
    ItemModel['number'] = this.number;
    ItemModel['content'] = this.content;

    return ItemModel;
  }
}
