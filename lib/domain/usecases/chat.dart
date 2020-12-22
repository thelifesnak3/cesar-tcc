import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

import '../entities/entities.dart';

abstract class Chat {
  Future<MessageEntity> sendMessage(MessageParams params);
}

class MessageParams extends Equatable {
  final String action;
  final String message;

  @override
  List<Object> get props => [action, message];

  MessageParams({
    @required this.action,
    @required this.message
  });
}
