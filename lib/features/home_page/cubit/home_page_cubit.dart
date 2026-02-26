import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:food_app/domain/models/food_model.dart';
import 'package:food_app/domain/models/restaurant.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meta/meta.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageInitial());

  //google map function
  Future<void> getCurrentLocation() async {
    emit(MapLoading());

    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      emit(MapError("Location services are disabled."));
      return;
    }

    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        emit(MapError("Location permissions are denied."));
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      emit(
        MapError(
          "Location permissions are permanently denied, please enable them from settings.",
        ),
      );
      await Geolocator.openAppSettings();
      return;
    }

    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    await _emitLocation(LatLng(position.latitude, position.longitude));
  }

  Future<void> selectLocation(LatLng latLng) async {
    emit(MapLoading());
    await _emitLocation(latLng);
  }

  Future<void> _emitLocation(LatLng latLng) async {
    List<Placemark> placemarks = await placemarkFromCoordinates(
      latLng.latitude,
      latLng.longitude,
    );

    Placemark place = placemarks.first;

    String address = "${place.street}, ${place.locality}, ${place.country}";

    emit(MapLoaded(location: latLng, address: address));
  }

  //set categories tabs
  List<FoodCategory> get categories => FoodCategory.values;

  //get data of Food Model

  List<FoodModel> foodItemsByCategory(FoodCategory category) {
    return Restaurant()
        .menu
        .where((element) => element.category == category)
        .toList();
  }
}
