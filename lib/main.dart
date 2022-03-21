import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabby_boc/blocs/counter_cubit.dart';
import 'package:tabby_boc/blocs/name_cubit.dart';
import 'package:tabby_boc/page_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>CounterCubit(0)),
        BlocProvider(create: (context)=>NameCubit('')),
      ],
        child: MaterialApp(
          theme: ThemeData(primarySwatch: Colors.purple),
          home: const HomePage(),
        ),
      
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabby Bloc'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          context.read<CounterCubit>().add();
        },
      ),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Button pressed $state times',
                  style: const TextStyle(fontSize: 24),
                ),
                CupertinoButton(
                  color: Colors.purple,
                  onPressed: () {
                    context.read<NameCubit>().saveName('Tabby');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Page2()));
                  },
                  child: const Text('Go to text'),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
