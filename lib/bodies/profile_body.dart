import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileBody extends StatelessWidget {

  Future<void> _signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      print(e);
    }
  }

  final User user;

  const ProfileBody({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    bool _isAnonymous = user.isAnonymous;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: user.photoURL != null
                ? NetworkImage(user.photoURL!)
                : const AssetImage('assets/images/user.png')
            as ImageProvider<Object>?,
            radius: 60,
          ),
          _isAnonymous
              ? Text('Guest Login',
            style: Theme
                .of(context)
                .textTheme
                .displayLarge,)
              : Text(
            'Welcome, ${user.displayName}',
            style: Theme
                .of(context)
                .textTheme
                .displayLarge,
          ),
          const Gap(30),
          ElevatedButton(
            onPressed: () async {
              _signOut();
            },
            child: _isAnonymous ? const Text('Login') : const Text('Sign Out'),
          ),
        ],
      ),
    );
  }
}
