import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabby_boc/blocs/cubit/get_breed_id_cubit.dart';
import 'package:tabby_boc/blocs/cubit/get_breeds_cubit.dart';
import 'package:tabby_boc/get_breed_id_page.dart';

class CatBreedPage extends StatelessWidget {
  const CatBreedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GetBreedsCubit, GetBreedsState>(
        builder: (context, state) {
          return state.maybeWhen(
              orElse: () {
                return Text("NOthing");
              },
              loading: () => Center(
                    child: CircularProgressIndicator(),
                  ),
              success: (breeds) {
                return ListView.builder(itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BlocProvider(
                                create: (context) => GetBreedIdCubit()
                                  ..getBreed(breeds[index].id!),
                                child: GetBreedIdPage(),
                              )));
                    },
                    leading: Image.network(breeds[index].image!['url']),
                    title: Text(breeds[index].name!),
                    subtitle: Text(breeds[index].description!),
                  );
                });
              });
        },
      ),
    );
  }
}
