import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shopywell/domain/product/model/product_model.dart';

import '../../../application/core/failures/failures.dart';
@lazySingleton
class GetProducts {
  final FirebaseFirestore firestore;

  GetProducts({required this.firestore});

    Future<Either<MainFailure,List<ProductModel>>> call()async{
 try {
    var snapshot=  await firestore.collection('products').get();
    final products = snapshot.docs.map((doc) {
  return ProductModel.fromMap(doc.data());
}).toList();
      return right(products);
    }  catch (e) {
      
        return left(MainFailure(message:e.toString()));
      
    }
  }
}