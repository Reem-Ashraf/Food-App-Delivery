import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/features/home_page/cubit/home_page_cubit.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, state) {
        String locationText = "Select location";

        if (state is MapLoaded) {
          locationText = state.address;
        }

        return Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 20, vertical: 10),
          child: InkWell(
            onTap: (){
              context.read<HomePageCubit>().getCurrentLocation();
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Current Location",
                  style: TextStyle(
                    color: Theme.of(context)
                        .colorScheme
                        .secondary,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Theme.of(context)
                          .colorScheme
                          .primary,
                    ),
                    Expanded(
                      child: Text(
                        locationText,
                        style: TextStyle(
                          color: Theme.of(context)
                              .colorScheme
                              .secondary,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}