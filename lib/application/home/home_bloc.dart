import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopywell/application/core/enums/enums.dart';
import 'package:shopywell/domain/product/i_product_facade.dart';
import 'package:shopywell/domain/product/model/product_model.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IProductFacade iProductFacade;
  HomeBloc(this.iProductFacade) : super(HomeState.initial()) {
    on<GetProducts>(_getProducts);
  }
 Future<void> _getProducts(GetProducts event, Emitter<HomeState> emit) async {
    emit(state.copyWith(getProductsState: ApiState.loading));
    var response = await iProductFacade.getProducts();
    response.fold(
      (l) {
        emit(state.copyWith(getProductsState: ApiState.error));
      },
      (r) {
        emit(state.copyWith(getProductsState: ApiState.success, products: r));
        print(r.isNotEmpty? r.first.name:"null");
      },
    );
  }
}
