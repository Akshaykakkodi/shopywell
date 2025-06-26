import 'package:dartz/dartz.dart';
import 'package:shopywell/application/core/failures/failures.dart';
import 'package:shopywell/domain/product/model/product_model.dart';

interface class IProductFacade {
  Future<Either<MainFailure, List<ProductModel>>> getProducts() {
    throw UnimplementedError();
  }

 
}
