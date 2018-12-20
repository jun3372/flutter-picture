// 单个分类模型
class CategoryModel {
  String id;
  String title;
  String url;
  int width;
  int height;
  String catalog;
  String folder;
  int number;
  String content;

  CategoryModel({
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

  CategoryModel.fromJson(Map<String, dynamic> json) {
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

  // ignore: non_constant_identifier_names
  Map<String, dynamic> toJson() {
    // ignore: non_constant_identifier_names
    final Map<String, dynamic> CategoryModel = new Map<String, dynamic>();
    CategoryModel['id'] = this.id;
    CategoryModel['title'] = this.title;
    CategoryModel['url'] = this.url;
    CategoryModel['width'] = this.width;
    CategoryModel['height'] = this.height;
    CategoryModel['catalog'] = this.catalog;
    CategoryModel['folder'] = this.folder;
    CategoryModel['number'] = this.number;
    CategoryModel['content'] = this.content;

    return CategoryModel;
  }
}
