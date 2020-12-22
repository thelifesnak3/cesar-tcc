import '../../../data/usecases/usecases.dart';
import '../../../domain/usecases/usecases.dart';
import '../factories.dart';

Chat makeRemoteChat() {
  return RemoteChat(
    httpClient: makeHttpAdapter(),
    url: makeApiUrl('guest-room')
  );
}