import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabby_boc/blocs/name_cubit.dart';

class Page2 extends StatelessWidget {

  const Page2({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(context.read<NameCubit>().state),
      ),
    );
  }
}

