import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shopywell/application/core/failures/failures.dart';
import 'package:shopywell/domain/product/i_product_facade.dart';
import 'package:shopywell/domain/product/model/product_model.dart';
import 'package:shopywell/infratstructure/product/get_products/get_products.dart';
@LazySingleton(as: IProductFacade)
class IProductFacadeImpl implements IProductFacade {
  final GetProducts getProductsCase;

  IProductFacadeImpl({required this.getProductsCase});
  @override
  Future<Either<MainFailure, List<ProductModel>>> getProducts()async {
   
  return await getProductsCase.call();
  }
}