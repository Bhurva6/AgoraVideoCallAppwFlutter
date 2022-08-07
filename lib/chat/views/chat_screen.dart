import 'package:flutter/material.dart';
import 'package:videocall/chat/views/video_call_screen.dart';
import 'package:videocall/chat/widgets/message_bubble.dart';
import 'package:videocall/chat/widgets/message_text_field.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const VideoCallScreen())),
            icon: const Icon(Icons.video_camera_front),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.only(bottom: 16),
              reverse: true,
              itemCount: _messages.length,
              itemBuilder: (_, index) => _messages[index],
              separatorBuilder: (_, __) => const SizedBox(height: 16),
            ),
          ),
          const MessageTextField(),
        ],
      ),
    );
  }
}

const _messages = <MessageBubble>[
  MessageBubble(
    profileImageUrl: 'https://unsplash.com/photos/d1UPkiFd04A',
    message: 'This is a test message!',
    date: 'Dec 6, 4:20 PM',
  ),
  MessageBubble(
      message: 'This is a Hi message from the sender.', date: 'Dec 6, 4:20 PM'),
  MessageBubble(
    profileImageUrl: 'https://unsplash.com/photos/d1UPkiFd04A',
    message: 'This is a test message!',
    date: 'Dec 6, 4:20 PM',
  ),
  MessageBubble(message: 'Hi ! how are you doing?', date: 'Dec 6, 4:20 PM')
];
