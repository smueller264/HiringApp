import 'strapi_model.dart';

class Job extends StrapiModel {
  final int id;
  final String title;
  final String company;
  final String releaseDate; //DateTime
  final String applyUntilDate; //DateTime
  final String jobNature; //JobNature
  final int minimumSalary; //int
  final int maximumSalary; //int
  final String location;
  final String description;
  final String rolesAndResponsibilities;

  Job({
    required this.id,
    required this.title,
    required this.company,
    required this.releaseDate,
    required this.applyUntilDate,
    required this.jobNature,
    required this.minimumSalary,
    required this.maximumSalary,
    required this.location,
    required this.description,
    required this.rolesAndResponsibilities,
  });

  @override
  Job.fromJson({required Map<String, dynamic> json})
      : this(
          id: json["id"],
          title: json["title"],
          company: json["company"],
          releaseDate: json["releaseDate"],
          applyUntilDate: json["applyUntilDate"],
          jobNature: json["nature"],
          minimumSalary: json["minimumSalary"],
          maximumSalary: json["maximumSalary"],
          location: json["location"],
          description: json["description"],
          rolesAndResponsibilities: json["rolesAndresponsibilites"],
        );
}
