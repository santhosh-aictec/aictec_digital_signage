

class ScheduleListModel {
  final int id;
  final int companyId;
  final String date;
  final String startTime;
  final String endTime;
  final int contentId;
  final bool isActive;
  final String dateCreated;
  final String dateUpdated;
  final Content content;

  ScheduleListModel({
    required this.id,
    required this.companyId,
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.contentId,
    required this.isActive,
    required this.dateCreated,
    required this.dateUpdated,
    required this.content,
  });

  factory ScheduleListModel.fromJson(Map<String, dynamic> json) {
    return ScheduleListModel(
      id: json['id'],
      companyId: json['companyId'],
      date: json['date'],
      startTime: json['startTime'],
      endTime: json['endTime'],
      contentId: json['contentId'],
      isActive: json['isActive'],
      dateCreated: json['dateCreated'],
      dateUpdated: json['dateUpdated'],
      content: Content.fromJson(json['content']),
    );
  }
}

class Content {
  final int id;
  final String fileName;
  final String filePath;
  final int companyId;
  final bool isActive;
  final String dateCreated;
  final String dateUpdated;

  Content({
    required this.id,
    required this.fileName,
    required this.filePath,
    required this.companyId,
    required this.isActive,
    required this.dateCreated,
    required this.dateUpdated,
  });

  factory Content.fromJson(Map<String, dynamic> json) {
    return Content(
      id: json['id'],
      fileName: json['fileName'],
      filePath: json['filePath'],
      companyId: json['companyId'],
      isActive: json['isActive'],
      dateCreated: json['dateCreated'],
      dateUpdated: json['dateUpdated'],
    );
  }
}