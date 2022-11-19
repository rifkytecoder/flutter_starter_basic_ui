import 'package:flutter/material.dart';
import 'package:flutter_starter_basic_ui/themes/colors.dart';

class ChattyPage extends StatelessWidget {
  const ChattyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blueColor,
        body: SafeArea(
            child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 40,
              ),
              const ClipOval(
                child: Image(
                  image: NetworkImage('https://picsum.photos/id/64/200/300'),
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 2),
              const Text(
                'Ada Lovely',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const Text(
                'Programmer',
                style: TextStyle(color: lightBlueColor, fontSize: 16),
              ),
              const SizedBox(height: 30),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(30),
                decoration: const BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Friends',
                      style: titleTextStyle,
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage:
                            NetworkImage('https://picsum.photos/id/65/200/300'),
                      ),
                      title: const Text('April'),
                      subtitle: const Text('Happy coding guys'),
                      trailing: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Now',
                            style:
                                titleTextStyle.copyWith(color: DarkBlueColor),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
