// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flutter_repo_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FlutterRepoResponse _$FlutterRepoResponseFromJson(Map<String, dynamic> json) =>
    FlutterRepoResponse(
      id: (json['id'] as num?)?.toInt(),
      nodeId: json['node_id'] as String?,
      name: json['name'] as String?,
      fullName: json['full_name'] as String?,
      private: json['private'] as bool?,
      owner: json['owner'] == null
          ? null
          : RepoOwner.fromJson(json['owner'] as Map<String, dynamic>),
      description: json['description'] as String?,
      stars: (json['stargazers_count'] as num?)?.toInt(),
      watchers: (json['watchers_count'] as num?)?.toInt(),
      forks: (json['forks_count'] as num?)?.toInt(),
      language: json['language'] as String?,
    );

Map<String, dynamic> _$FlutterRepoResponseToJson(
        FlutterRepoResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'name': instance.name,
      'full_name': instance.fullName,
      'private': instance.private,
      'owner': instance.owner,
      'description': instance.description,
      'stargazers_count': instance.stars,
      'watchers_count': instance.watchers,
      'forks_count': instance.forks,
      'language': instance.language,
    };

RepoOwner _$RepoOwnerFromJson(Map<String, dynamic> json) => RepoOwner(
      login: json['login'] as String?,
      id: (json['id'] as num?)?.toInt(),
      nodeId: json['nodeId'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      url: json['url'] as String?,
      htmlUrl: json['htmlUrl'] as String?,
    );

Map<String, dynamic> _$RepoOwnerToJson(RepoOwner instance) => <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'nodeId': instance.nodeId,
      'avatarUrl': instance.avatarUrl,
      'url': instance.url,
      'htmlUrl': instance.htmlUrl,
    };
