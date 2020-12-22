import 'dart:async';

import 'package:meta/meta.dart';

import 'package:cesar_tcc/domain/usecases/chat.dart';
import 'package:cesar_tcc/ui/pages/mari_chat/mari_chat_presenter.dart';

class MariChatState {
  String message;
}

class StreamMariChatPresenter implements MariChatPresenter {
  final Chat chat;

  var _controller = StreamController<MariChatState>.broadcast();
  var _state = MariChatState();

  StreamMariChatPresenter({@required this.chat});

  void _update() => _controller?.add(_state);

  void dispose() {
    _controller?.close();
    _controller = null;
  }
}