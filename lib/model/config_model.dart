// 初始化配置模型
class ConfigModel {
  String versionCode;
  String appName;
  String downUrl;
  String updateInfo;
  String dataUrl;
  String fileUrl;
  String apiUrl;
  String mustUpdate;

  ConfigModel({
    this.versionCode,
    this.appName,
    this.downUrl,
    this.updateInfo,
    this.dataUrl,
    this.fileUrl,
    this.apiUrl,
    this.mustUpdate,
  });

  ConfigModel.fromJson(Map<String, dynamic> json) {
    versionCode = json['versionCode'];
    appName = json['appName'];
    downUrl = json['downUrl'];
    updateInfo = json['updateInfo'];
    dataUrl = json['dataUrl'];
    fileUrl = json['fileUrl'];
    apiUrl = json['apiUrl'];
    mustUpdate = json['mustUpdate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['versionCode'] = this.versionCode;
    data['appName'] = this.appName;
    data['downUrl'] = this.downUrl;
    data['updateInfo'] = this.updateInfo;
    data['dataUrl'] = this.dataUrl;
    data['fileUrl'] = this.fileUrl;
    data['apiUrl'] = this.apiUrl;
    data['mustUpdate'] = this.mustUpdate;

    return data;
  }
}
