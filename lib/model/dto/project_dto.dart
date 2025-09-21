class ProjectDto {
  final List<String> tags;
  final List<String> images;
  final String projectName;
  final String projectDescription;
  final String url;
  final String? playStoreUrl;
  final String? appStoreUrl;

  const ProjectDto({
    required this.tags,
    required this.images,
    required this.projectName,
    required this.projectDescription,
    required this.url,
    this.playStoreUrl,
    this.appStoreUrl,
  });
}
