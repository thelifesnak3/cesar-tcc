import 'package:flutter/material.dart';

import '../../../../ui/pages/mari_chat/mari_chat_page.dart';
import '../../factories.dart';

Widget makeMariChatPage() {
  return MariChatPage(makeMariChatPresenter());
}