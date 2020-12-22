import 'dart:async';
import 'package:cesar_tcc/domain/entities/message_entity.dart';
import 'package:meta/meta.dart';

import '../../ui/pages/pages.dart';
import '../../domain/usecases/usecases.dart';
import '../../domain/helpers/helpers.dart';

class MariChatState {
  String message;
  String mainError;
  bool isLoading = false;
}

class StreamMariChatPresenter implements MariChatPresenter {
  final Chat chat;

  var _controller = StreamController<MariChatState>.broadcast();
  var _state = MariChatState();
  
  Stream<String> get mainErrorStream => _controller?.stream?.map((state) => state.mainError)?.distinct();

  StreamMariChatPresenter({@required this.chat});

  void _update() => _controller?.add(_state);

  Future<void> sendMessage() async {
    _state.isLoading = true;
    _update();
    try {
      MessageEntity response = await chat.sendMessage(MessageParams(message: _state.message)); 
      print(response.message);
    } on DomainError catch (error) {
      _state.mainError = error.description;
    }
    _state.isLoading = false;
    _update();
  }

  void onChangeMessage(String message) {
    _state.message = message;
    _update();
  }

  void dispose() {
    _controller?.close();
    _controller = null;
  }
}