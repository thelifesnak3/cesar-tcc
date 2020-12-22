import 'package:meta/meta.dart';

import '../../domain/entities/entities.dart';
import '../../domain/helpers/helpers.dart';
import '../../domain/usecases/usecases.dart';

import '../http/http.dart';
import '../models/models.dart';

class RemoteChat implements Chat {
  final HttpClient httpClient;
  final String url;

  RemoteChat({
    @required this.httpClient,
    @required this.url
  });

  Future<MessageEntity> sendMessage(MessageParams params) async {
    final body = RemoteMessageParams.fromDomain(params).toJson();
    try {
      final httpResponse = await httpClient.request(url: url+'?message=${params.message}', method: 'post', body: body);
      print(httpResponse);
      return RemoteMessageModel.fromJson(httpResponse).toEntity();
    } on HttpError catch(error) {
      throw error == HttpError.unauthorized
        ? DomainError.invalidCredentials
        : DomainError.unexpected;
    }
  }
}

class RemoteMessageParams {
  final String action;
  final String message;

  RemoteMessageParams({
    @required this.action,
    @required this.message
  });

  factory RemoteMessageParams.fromDomain(MessageParams params) => 
    RemoteMessageParams(action: params.action, message: params.message);

  Map toJson() => {'action': action, 'message': message};
}