import '../../../../presentation/presenters/presenters.dart';
import '../../../../ui/pages/mari_chat/mari_chat_presenter.dart';
import '../../factories.dart';

MariChatPresenter makeMariChatPresenter() {
  return StreamMariChatPresenter(chat: makeRemoteChat());
}