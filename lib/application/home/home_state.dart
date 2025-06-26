part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<ProductModel> products,
    required ApiState getProductsState
  }) = _HomeState;

   factory HomeState.initial() => HomeState(products: [],getProductsState: ApiState.initial);
}
