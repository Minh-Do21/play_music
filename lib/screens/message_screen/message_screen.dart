
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../utils/barrel_utils.dart';
import 'bloc/message_bloc.dart';

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (_) => MessageBloc()..add(InitBlocEvent()),
        child: const _MessageScreenForm(),
    );
  }
}

class _MessageScreenForm extends StatefulWidget {
  const _MessageScreenForm({Key? key}) : super(key: key);

  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<_MessageScreenForm> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("MESSAGE"),
      ),
    );
  }
}
