
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../utils/barrel_utils.dart';
import 'bloc/profile_bloc.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (_) => ProfileBloc()..add(InitBlocEvent()),
        child: const _ProfileScreenForm(),
    );
  }
}

class _ProfileScreenForm extends StatefulWidget {
  const _ProfileScreenForm({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<_ProfileScreenForm> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("PROFILE"),
      ),
    );
  }
}
