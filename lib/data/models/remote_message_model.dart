import '../../domain/entities/entities.dart';

class RemoteMessageModel {
  final String action;
  final MessageEntity response;
  final List<String> tags;

  RemoteMessageModel(this.action, this.response, this.tags);

  factory RemoteMessageModel.fromJson(Map json) {
    
    return RemoteMessageModel(
      json['action'],
      json['response'],
      json['tags']
    );
  } 

  MessageEntity toEntity() => MessageEntity(response.message, response.tags);
}