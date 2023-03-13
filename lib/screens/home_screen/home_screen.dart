
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../utils/barrel_utils.dart';
import 'bloc/home_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (_) => HomeBloc()..add(InitBlocEvent()),
        child: const _HomeScreenForm(),
    );
  }
}

class _HomeScreenForm extends StatefulWidget {
  const _HomeScreenForm({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<_HomeScreenForm> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("HOME"),
      ),
    );
  }
}
