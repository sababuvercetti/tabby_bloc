import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabby_boc/blocs/cubit/get_breed_id_cubit.dart';

class GetBreedIdPage extends StatefulWidget {
  const GetBreedIdPage({Key? key}) : super(key: key);

  @override
  State<GetBreedIdPage> createState() => _GetBreedIdPageState();
}

class _GetBreedIdPageState extends State<GetBreedIdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<GetBreedIdCubit, GetBreedIdState>(
        builder: (context, state) {
          return state.maybeWhen(
              orElse: () {
                return Container();
              },
              loading: () => Center(
                    child: CircularProgressIndicator(),
                  ),
              success: (bred) {
                return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(bred.id!),
                      Text(bred.name!),
                      Text(bred.description!),
                    ]);
              });
        },
      ),
    );
  }
}
