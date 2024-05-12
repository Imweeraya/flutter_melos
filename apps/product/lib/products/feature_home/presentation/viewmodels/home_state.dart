
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:product/products/feature_home/domain/entities/product.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {


  factory HomeState({
    required bool loading , 
    required List<List<ProductDisplay>> products, 
    required List<String> categories}) = _HomeState;


}
