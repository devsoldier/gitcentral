import 'package:freezed_annotation/freezed_annotation.dart';

part 'flutter_repo_response.g.dart';

@JsonSerializable()
class FlutterRepoResponse {
  final int? id;
  @JsonKey(name: 'node_id')
  final String? nodeId;
  final String? name;
  @JsonKey(name: 'full_name')
  final String? fullName;
  final bool? private;
  final RepoOwner? owner;
  final String? description;
  @JsonKey(name: 'stargazers_count')
  final int? stars;
  @JsonKey(name: 'watchers_count')
  final int? watchers;
  @JsonKey(name: 'forks_count')
  final int? forks;
  final String? language;

  FlutterRepoResponse({
    this.id,
    this.nodeId,
    this.name,
    this.fullName,
    this.private,
    this.owner,
    this.description,
    this.stars,
    this.watchers,
    this.forks,
    this.language,
  });

  factory FlutterRepoResponse.fromJson(Map<String, dynamic> json) =>
      _$FlutterRepoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FlutterRepoResponseToJson(this);

  @override
  String toString() {
    return 'FlutterRepoResponse(id: $id, nodeId: $nodeId, name: $name, fullName: $fullName, private: $private, owner: $owner)';
  }
}

@JsonSerializable()
class RepoOwner {
  final String? login;
  final int? id;
  final String? nodeId;
  final String? avatarUrl;
  final String? url;
  final String? htmlUrl;

  RepoOwner({
    this.login,
    this.id,
    this.nodeId,
    this.avatarUrl,
    this.url,
    this.htmlUrl,
  });

  factory RepoOwner.fromJson(Map<String, dynamic> json) =>
      _$RepoOwnerFromJson(json);

  Map<String, dynamic> toJson() => _$RepoOwnerToJson(this);

  @override
  String toString() {
    return 'RepoOwner(login: $login, id: $id, nodeId: $nodeId, avatarUrl: $avatarUrl, url: $url, htmlUrl: $htmlUrl)';
  }
}
