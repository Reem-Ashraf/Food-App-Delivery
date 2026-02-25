part of 'home_page_cubit.dart';

@immutable
sealed class HomePageState {}

final class HomePageInitial extends HomePageState {}

class MapLoading extends HomePageState {}

class MapLoaded extends HomePageState {
  final LatLng location;
  final String address;

  MapLoaded({
    required this.location,
    required this.address,
  });
}
class MapError extends HomePageState {
  final String message;
  MapError(this.message);
}