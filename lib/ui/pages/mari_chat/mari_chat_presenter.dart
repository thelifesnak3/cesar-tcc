abstract class MariChatPresenter {
  Stream<String> get mainErrorStream;
  
  void onChangeMessage(String message);
  Future<void> sendMessage();
  void dispose();
}