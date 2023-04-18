import 'dart:convert';

List<JobModel> parseDataFromJsonString(String? json) {
  if (json == null) {
    return [];
  }

  var jobs = dataFromJson(json);
  return jobs.data;
}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));

String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    required this.data,
  });

  List<JobModel> data;

  Data copyWith({
    List<JobModel>? data,
  }) =>
      Data(
        data: data ?? this.data,
      );

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        data:
            List<JobModel>.from(json["data"].map((x) => JobModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class JobModel {
  JobModel({
    required this.company,
    required this.jobName,
    required this.logo,
    required this.minSalary,
    required this.maxSalary,
    required this.city,
    required this.status,
  });

  String company;
  String jobName;
  String logo;
  int minSalary;
  int maxSalary;
  String city;
  String status;

  JobModel copyWith({
    String? company,
    String? jobName,
    String? logo,
    int? minSalary,
    int? maxSalary,
    String? city,
    String? status,
  }) =>
      JobModel(
        company: company ?? this.company,
        jobName: jobName ?? this.jobName,
        logo: logo ?? this.logo,
        minSalary: minSalary ?? this.minSalary,
        maxSalary: maxSalary ?? this.maxSalary,
        city: city ?? this.city,
        status: status ?? this.status,
      );

  factory JobModel.fromJson(Map<String, dynamic> json) => JobModel(
        company: json["company"],
        jobName: json["job_name"],
        logo: json["logo"],
        minSalary: json["min_salary"],
        maxSalary: json["max_salary"],
        city: json["city"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "company": company,
        "job_name": jobName,
        "logo": logo,
        "min_salary": minSalary,
        "max_salary": maxSalary,
        "city": city,
        "status": status,
      };
}
