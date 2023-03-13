
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../utils/barrel_utils.dart';
import 'bloc/friend_bloc.dart';

class FriendScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLOR_CONST.white,
      body: BlocProvider(
      create: (_) => FriendBloc()..add(InitBlocEvent()),
        child: const _FriendScreenForm(),
      )
    );
  }
}

class _FriendScreenForm extends StatefulWidget {
  const _FriendScreenForm({Key? key}) : super(key: key);

  @override
  _FriendScreenState createState() => _FriendScreenState();
}

class _FriendScreenState extends State<_FriendScreenForm> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("FRIEND"),
    );
  }
}
